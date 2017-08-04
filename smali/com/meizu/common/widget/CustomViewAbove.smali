.class public Lcom/meizu/common/widget/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomViewAbove$SimpleOnPageChangeListener;,
        Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x12c

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static mCriticalVelocity:I

.field private static final sInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mActivePointerId:I

.field private mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialAbsVelocity:I

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

.field private mPlusVelocitys:I

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field private mVelocityCount:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

.field private mViewOffsetLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/CustomViewAbove;->sInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/16 v0, 0x28a

    .line 1158
    sput v0, Lcom/meizu/common/widget/CustomViewAbove;->mCriticalVelocity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 79
    iput-boolean v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    .line 93
    iput v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewOffsetLeft:I

    .line 642
    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    .line 699
    iput-boolean v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    .line 701
    iput v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInitialAbsVelocity:I

    .line 703
    iput v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    .line 705
    iput v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    const/4 v0, 0x0

    .line 1009
    iput v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    .line 152
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->initCustomViewAbove()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CustomViewAbove;)Lcom/meizu/common/widget/CustomViewBehind;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomViewAbove;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    return-object v0
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 619
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrolling:Z

    .line 620
    .local v0, "needPopulate":Z
    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrolling:Z

    .line 640
    return-void

    .line 622
    :cond_1
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 623
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 624
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 625
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 626
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 627
    .local v3, "x":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 628
    .local v4, "y":I
    if-eq v1, v3, :cond_3

    .line 629
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 631
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-nez v5, :cond_4

    .line 635
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_0

    .line 636
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    .line 628
    :cond_3
    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 632
    :cond_4
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_0

    .line 633
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1034
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    .line 1035
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 1036
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    const/4 v0, -0x1

    .line 1037
    iput v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 1039
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1042
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_1
    iput-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 693
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 694
    .local v0, "activePointerIndex":I
    if-eq v0, v1, :cond_0

    .line 696
    :goto_0
    return v0

    .line 695
    :cond_0
    iput v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    goto :goto_0
.end method

.method private getWindowBackgroud()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010054

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 196
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    return v1
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 390
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 391
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 396
    return v5

    .line 391
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 392
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    const/4 v3, 0x1

    return v3
.end method

.method private isInternalContentView(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 406
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 407
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    return v3

    .line 409
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1015
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1016
    .local v1, "pointerId":I
    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    if-eq v1, v3, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    if-eqz v2, :cond_2

    .line 1020
    .local v0, "newPointerIndex":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 1021
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 1022
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1023
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .end local v0    # "newPointerIndex":I
    :cond_2
    const/4 v0, 0x1

    .line 1019
    goto :goto_1
.end method

.method private setDefaultBackgroud(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "background"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move v3, v1

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    and-int/2addr v1, v3

    if-nez v1, :cond_2

    .line 211
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 208
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-ne v0, p1, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 1051
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    .line 1031
    return-void
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 659
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    iget v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 672
    return v1

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    return v1

    .line 665
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->isInternalContentView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 667
    :pswitch_1
    return v1

    .line 669
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/meizu/common/widget/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    return v0
.end method

.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1107
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, "currentFocused":Landroid/view/View;
    if-eq v0, p0, :cond_3

    .line 1111
    .end local v0    # "currentFocused":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    .line 1113
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1115
    .local v2, "nextFocused":Landroid/view/View;
    if-nez v2, :cond_4

    .line 1128
    :cond_0
    if-ne p1, v4, :cond_8

    .line 1130
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->pageLeft()Z

    move-result v1

    .line 1135
    .end local v1    # "handled":Z
    :cond_2
    :goto_1
    if-nez v1, :cond_b

    .line 1138
    :goto_2
    return v1

    .end local v2    # "nextFocused":Landroid/view/View;
    .restart local v0    # "currentFocused":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    .line 1109
    .local v0, "currentFocused":Landroid/view/View;
    goto :goto_0

    .line 1115
    .end local v0    # "currentFocused":Landroid/view/View;
    .restart local v1    # "handled":Z
    .restart local v2    # "nextFocused":Landroid/view/View;
    :cond_4
    if-eq v2, v0, :cond_0

    .line 1116
    if-eq p1, v4, :cond_6

    .line 1118
    if-ne p1, v5, :cond_2

    .line 1122
    if-nez v0, :cond_7

    .line 1125
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_1

    .line 1117
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_1

    .line 1122
    .local v1, "handled":Z
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1123
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_1

    .local v1, "handled":Z
    :cond_8
    const/4 v3, 0x1

    .line 1128
    if-eq p1, v3, :cond_1

    .line 1131
    if-ne p1, v5, :cond_a

    .line 1133
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_1

    .local v1, "handled":Z
    :cond_a
    const/4 v3, 0x2

    .line 1131
    if-eq p1, v3, :cond_9

    goto :goto_1

    .line 1136
    .end local v1    # "handled":Z
    :cond_b
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->playSoundEffect(I)V

    goto :goto_2
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 564
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 584
    return-void

    .line 565
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 567
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 568
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 569
    .local v2, "x":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 571
    .local v3, "y":I
    if-eq v0, v2, :cond_3

    .line 572
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 573
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->pageScrolled(I)V

    .line 577
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->invalidate()V

    .line 578
    return-void

    .line 571
    :cond_3
    if-ne v1, v3, :cond_2

    goto :goto_0
.end method

.method determineTargetPage(FII)I
    .locals 3
    .param p1, "pageOffset"    # F
    .param p2, "velocity"    # I
    .param p3, "deltaX"    # I

    .prologue
    .line 981
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    .line 982
    .local v0, "targetPage":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mFlingDistance:I

    if-gt v1, v2, :cond_2

    .line 989
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 991
    :cond_1
    :goto_0
    return v0

    .line 982
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_0

    .line 983
    if-gtz p2, :cond_4

    .line 985
    :cond_3
    if-gez p2, :cond_1

    if-gez p3, :cond_1

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    :cond_4
    if-lez p3, :cond_3

    .line 984
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1003
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1004
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/meizu/common/widget/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 1005
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/meizu/common/widget/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 1006
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1067
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 351
    sub-float/2addr p1, v0

    .line 352
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 353
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1103
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v0

    .line 1081
    .restart local v0    # "handled":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v1, 0x11

    .line 1083
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .local v0, "handled":Z
    :sswitch_1
    const/16 v1, 0x42

    .line 1086
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 1089
    .local v0, "handled":Z
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1094
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1096
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .local v0, "handled":Z
    :cond_2
    const/4 v1, 0x2

    .line 1095
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 1081
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getAboveOffsetLeft()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewOffsetLeft:I

    return v0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 416
    return v0
.end method

.method public getChildWidth(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    .line 429
    return v0

    .line 425
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getBehindWidth()I

    move-result v0

    return v0

    .line 427
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 357
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    .line 364
    return v0

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    return v0

    .line 362
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLeftBound()I
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 995
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRightBound()I
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .locals 5

    .prologue
    .line 156
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setWillNotDraw(Z)V

    const/high16 v3, 0x40000

    .line 157
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setDescendantFocusability(I)V

    .line 158
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setFocusable(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/meizu/common/widget/CustomViewAbove;->sInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    .line 161
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 162
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mMinimumVelocity:I

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mMaximumVelocity:I

    .line 165
    new-instance v3, Lcom/meizu/common/widget/CustomViewAbove$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/CustomViewAbove$1;-><init>(Lcom/meizu/common/widget/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setInternalPageChangeListener(Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;)Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    .line 181
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .local v2, "density":F
    const/high16 v3, 0x41c80000    # 25.0f

    .line 182
    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mFlingDistance:I

    .line 183
    return-void
.end method

.method public isMenuOpen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 380
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CustomViewAbove;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 711
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    if-eqz v13, :cond_1

    .line 720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v13}, Lcom/meizu/common/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v13

    if-nez v13, :cond_3

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v2, v13, 0xff

    .local v2, "action":I
    const/4 v13, 0x3

    .line 727
    if-ne v2, v13, :cond_4

    .line 729
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    .line 730
    const/4 v13, 0x0

    return v13

    .line 712
    .end local v2    # "action":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v13

    if-nez v13, :cond_2

    .line 715
    const/4 v13, 0x0

    return v13

    .line 713
    :cond_2
    const/4 v13, 0x1

    return v13

    .line 721
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 722
    const/4 v13, 0x1

    return v13

    .restart local v2    # "action":I
    :cond_4
    const/4 v13, 0x1

    .line 727
    if-eq v2, v13, :cond_0

    if-nez v2, :cond_7

    .line 733
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v13, :cond_8

    .line 736
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 738
    sparse-switch v2, :sswitch_data_0

    .line 814
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    if-eqz v13, :cond_12

    :cond_6
    const/4 v13, 0x1

    :goto_3
    return v13

    .line 727
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    if-nez v13, :cond_0

    goto :goto_0

    .line 734
    :cond_8
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 741
    :sswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    if-eqz v13, :cond_b

    .line 753
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .local v3, "activePointerId":I
    const/4 v13, -0x1

    .line 754
    if-eq v3, v13, :cond_5

    .line 756
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .local v6, "pointerIndex":I
    const/4 v13, -0x1

    .line 757
    if-eq v6, v13, :cond_5

    .line 759
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 760
    .local v9, "x":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    sub-float v5, v9, v13

    .line 761
    .local v5, "dx":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 762
    .local v10, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 763
    .local v11, "y":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionY:F

    sub-float v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 766
    .local v12, "yDiff":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v13, v10, v13

    if-lez v13, :cond_a

    cmpl-float v13, v10, v12

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v13

    if-nez v13, :cond_c

    .line 781
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v13, v12, v13

    if-lez v13, :cond_5

    .line 782
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_2

    .line 741
    .end local v3    # "activePointerId":I
    .end local v5    # "dx":F
    .end local v6    # "pointerIndex":I
    .end local v9    # "x":F
    .end local v10    # "xDiff":F
    .end local v11    # "y":F
    .end local v12    # "yDiff":F
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v13

    if-nez v13, :cond_9

    .line 742
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v13, 0x3e8

    .line 743
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/CustomViewAbove;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 744
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    invoke-virtual {v8, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    float-to-int v7, v13

    .line 745
    .local v7, "velocity":I
    if-lez v7, :cond_9

    .line 746
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    .line 747
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    goto/16 :goto_4

    .line 771
    .end local v7    # "velocity":I
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v3    # "activePointerId":I
    .restart local v5    # "dx":F
    .restart local v6    # "pointerIndex":I
    .restart local v9    # "x":F
    .restart local v10    # "xDiff":F
    .restart local v11    # "y":F
    .restart local v12    # "yDiff":F
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    if-eqz v13, :cond_e

    .line 778
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->startDrag()V

    .line 779
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 780
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_2

    .line 771
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    if-lez v13, :cond_d

    .line 772
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    div-int v4, v13, v14

    .line 773
    .local v4, "averageVelocity":I
    sget v13, Lcom/meizu/common/widget/CustomViewAbove;->mCriticalVelocity:I

    if-le v4, v13, :cond_d

    .line 774
    const/4 v13, 0x0

    return v13

    .line 787
    .end local v3    # "activePointerId":I
    .end local v4    # "averageVelocity":I
    .end local v5    # "dx":F
    .end local v6    # "pointerIndex":I
    .end local v9    # "x":F
    .end local v10    # "xDiff":F
    .end local v11    # "y":F
    .end local v12    # "yDiff":F
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x8

    if-ge v13, v15, :cond_f

    :cond_f
    const v13, 0xff00

    and-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 790
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 791
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionY:F

    .line 793
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 802
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    :cond_10
    :goto_5
    const/4 v13, 0x0

    .line 804
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    const/4 v13, 0x0

    .line 805
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    goto/16 :goto_2

    .line 794
    :cond_11
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 795
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsUnableToDrag:Z

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    move/from16 v17, v0

    add-float v16, v16, v17

    invoke-virtual/range {v13 .. v16}, Lcom/meizu/common/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 799
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    goto :goto_5

    :sswitch_2
    const/4 v13, 0x0

    .line 808
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    const/4 v13, 0x0

    .line 809
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    .line 810
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 814
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    if-nez v13, :cond_6

    const/4 v13, 0x0

    goto/16 :goto_3

    .line 738
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 542
    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 543
    .local v1, "width":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 544
    .local v0, "height":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 545
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 517
    invoke-static {v4, p1}, Lcom/meizu/common/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 518
    .local v3, "width":I
    invoke-static {v4, p2}, Lcom/meizu/common/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 519
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setMeasuredDimension(II)V

    .line 521
    invoke-static {p1, v4, v3}, Lcom/meizu/common/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 522
    .local v1, "contentWidth":I
    invoke-static {p2, v4, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 523
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 524
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-nez v0, :cond_0

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-nez v0, :cond_1

    .line 616
    :goto_1
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 528
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 530
    if-ne p1, p3, :cond_0

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 536
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 822
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 831
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 835
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/common/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v24

    if-nez v24, :cond_5

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 842
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 845
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 847
    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 963
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v24, 0x1

    return v24

    .line 823
    .end local v4    # "action":I
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 827
    const/16 v24, 0x1

    return v24

    .line 825
    :cond_3
    const/16 v24, 0x0

    return v24

    .line 831
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 832
    const/16 v24, 0x0

    return v24

    .line 836
    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 837
    const/16 v24, 0x0

    return v24

    .line 843
    .restart local v4    # "action":I
    :cond_6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 850
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    const/16 v24, 0x0

    .line 853
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    const/16 v24, 0x0

    .line 854
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    const/16 v24, 0x0

    .line 855
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    goto :goto_1

    .line 858
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 884
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 887
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 890
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 891
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v6, v24, v20

    .line 892
    .local v6, "deltaX":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v12, v0

    .line 894
    .local v12, "oldScrollX":F
    add-float v16, v12, v6

    .line 896
    .local v16, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getLeftBound()I

    move-result v24

    move/from16 v0, v24

    int-to-float v10, v0

    .line 897
    .local v10, "leftBound":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getRightBound()I

    move-result v24

    move/from16 v0, v24

    int-to-float v15, v0

    .line 899
    .local v15, "rightBound":F
    cmpg-float v24, v16, v10

    if-gez v24, :cond_d

    .line 900
    move/from16 v16, v10

    .line 905
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v16, v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 906
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 908
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 859
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v20    # "x":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .local v14, "pointerIndex":I
    const/16 v24, -0x1

    .line 862
    move/from16 v0, v24

    if-eq v14, v0, :cond_1

    .line 864
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 865
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v7, v20, v24

    .line 866
    .local v7, "dx":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 867
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 868
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 871
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_a

    const/16 v24, 0x1

    :goto_4
    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 881
    :cond_9
    const/16 v24, 0x0

    return v24

    .line 871
    :cond_a
    const/16 v24, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_9

    :cond_c
    cmpl-float v24, v21, v23

    if-lez v24, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->startDrag()V

    .line 876
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 877
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_2

    .line 901
    .end local v7    # "dx":F
    .end local v14    # "pointerIndex":I
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    .restart local v5    # "activePointerIndex":I
    .restart local v6    # "deltaX":F
    .restart local v10    # "leftBound":F
    .restart local v12    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_d
    cmpl-float v24, v16, v15

    if-lez v24, :cond_7

    .line 902
    move/from16 v16, v15

    goto/16 :goto_3

    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v20    # "x":F
    :pswitch_3
    const/16 v24, 0x0

    .line 912
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mPlusVelocitys:I

    const/16 v24, 0x0

    .line 913
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityCount:I

    .line 914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_e

    .line 933
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-virtual/range {v24 .. v27}, Lcom/meizu/common/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x1

    .line 937
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 915
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v9, v0

    .line 918
    .local v9, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v17

    .line 919
    .local v17, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v24

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->getBehindWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 921
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 922
    .restart local v5    # "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    :goto_5
    const/16 v24, -0x1

    .line 931
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 923
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 924
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 926
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v13, v9, v1}, Lcom/meizu/common/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .line 927
    .local v11, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_5

    .line 942
    .end local v5    # "activePointerIndex":I
    .end local v9    # "initialVelocity":I
    .end local v11    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v17    # "scrollX":I
    .end local v18    # "totalDelta":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v20    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    const/16 v24, -0x1

    .line 944
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 949
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 950
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 951
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    .line 952
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .line 956
    .end local v8    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 958
    .restart local v14    # "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 960
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_1

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1142
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-gtz v0, :cond_0

    .line 1146
    return v1

    .line 1143
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1144
    return v2
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1150
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-lt v0, v1, :cond_0

    .line 1154
    const/4 v0, 0x0

    return v0

    .line 1151
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1152
    return v1
.end method

.method public pageScrolled(I)V
    .locals 6
    .param p1, "xpos"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getWidth()I

    move-result v3

    .line 588
    .local v3, "widthWithMargin":I
    div-int v2, p1, v3

    .line 589
    .local v2, "position":I
    rem-int v1, p1, v3

    .line 590
    .local v1, "offsetPixels":I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 592
    .local v0, "offset":F
    invoke-virtual {p0, v2, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->onPageScrolled(IFI)V

    .line 593
    return-void
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 972
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 973
    int-to-float v0, p1

    iput v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrollX:F

    .line 976
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/meizu/common/widget/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 978
    return-void
.end method

.method public setAboveOffsetLeft(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    if-gtz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/CustomViewBehind;->setVisibleAlways(Z)V

    .line 554
    iput p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewOffsetLeft:I

    .line 555
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->requestLayout()V

    .line 556
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 553
    goto :goto_0
.end method

.method public setContent(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 498
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 500
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    .line 501
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/meizu/common/widget/CustomViewAbove;->addView(Landroid/view/View;II)V

    .line 503
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getWindowBackgroud()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setDefaultBackgroud(Landroid/view/View;I)V

    .line 504
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewAbove;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCriticalVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .prologue
    .line 1161
    sput p1, Lcom/meizu/common/widget/CustomViewAbove;->mCriticalVelocity:I

    .line 1162
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 228
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 239
    return-void
.end method

.method public setCurrentItem(IZZ)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 250
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 258
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 261
    if-eqz p3, :cond_3

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    .line 268
    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_4

    move v1, v2

    .line 269
    .local v1, "dispatchSelected":Z
    :goto_0
    iput p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    .line 270
    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .line 271
    .local v0, "destX":I
    if-nez v1, :cond_5

    .line 274
    :cond_1
    :goto_1
    if-nez v1, :cond_6

    .line 277
    :cond_2
    :goto_2
    if-nez p2, :cond_7

    .line 280
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 281
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 283
    :goto_3
    return-void

    .line 261
    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_3
    iget v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_0

    .line 262
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 263
    return-void

    :cond_4
    const/4 v1, 0x1

    .line 268
    goto :goto_0

    .line 271
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_1

    .line 274
    :cond_6
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_2

    .line 278
    :cond_7
    invoke-virtual {p0, v0, v2, p4}, Lcom/meizu/common/widget/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_3
.end method

.method public setCustomViewBehind(Lcom/meizu/common/widget/CustomViewBehind;)V
    .locals 0
    .param p1, "cvb"    # Lcom/meizu/common/widget/CustomViewBehind;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    .line 512
    return-void
.end method

.method setInternalPageChangeListener(Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;)Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    .line 320
    .local v0, "oldListener":Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    .line 321
    return-object v0
.end method

.method public setOnClosedListener(Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    .line 309
    return-void
.end method

.method public setOnOpenedListener(Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    .line 301
    return-void
.end method

.method public setOnPageChangeListener(Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;

    .line 293
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mEnabled:Z

    .line 439
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 645
    iput p1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mTouchMode:I

    .line 646
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/CustomViewAbove;->smoothScrollTo(III)V

    .line 449
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 466
    .local v1, "sx":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 467
    .local v2, "sy":I
    sub-int v3, p1, v1

    .line 468
    .local v3, "dx":I
    sub-int v4, p2, v2

    .line 469
    .local v4, "dy":I
    if-eqz v3, :cond_2

    .line 481
    :cond_0
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 482
    iput-boolean v8, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScrolling:Z

    .line 484
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->getBehindWidth()I

    move-result v7

    .local v7, "width":I
    const/4 v5, 0x0

    .line 487
    .local v5, "duration":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v8, v7

    div-float v6, v0, v8

    .local v6, "pageDelta":F
    const/high16 v0, 0x40000000    # 2.0f

    .line 488
    add-float/2addr v0, v6

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v0, v8

    float-to-int v5, v0

    const/16 v0, 0x12c

    .line 489
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 491
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 494
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->invalidate()V

    .line 495
    return-void

    .line 462
    .end local v1    # "sx":I
    .end local v2    # "sy":I
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v5    # "duration":I
    .end local v6    # "pageDelta":F
    .end local v7    # "width":I
    :cond_1
    invoke-direct {p0, v9}, Lcom/meizu/common/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 463
    return-void

    .line 469
    .restart local v1    # "sx":I
    .restart local v2    # "sy":I
    .restart local v3    # "dx":I
    .restart local v4    # "dy":I
    :cond_2
    if-nez v4, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewAbove;->completeScroll()V

    .line 471
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_4

    .line 475
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    if-nez v0, :cond_5

    .line 478
    :cond_3
    :goto_1
    return-void

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mOpenedListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_1

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mClosedListener:Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_1

    .line 492
    .restart local v5    # "duration":I
    .restart local v6    # "pageDelta":F
    .restart local v7    # "width":I
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, v9}, Lcom/meizu/common/widget/CustomViewBehind;->setVisibility(I)V

    goto :goto_0
.end method

.method public thisSlideAllowed(F)Z
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "allowed":Z
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    .line 689
    .local v0, "allowed":Z
    :goto_0
    return v0

    .line 683
    .local v0, "allowed":Z
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewAbove;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .local v0, "allowed":Z
    goto :goto_0
.end method
