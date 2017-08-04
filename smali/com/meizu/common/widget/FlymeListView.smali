.class public Lcom/meizu/common/widget/FlymeListView;
.super Landroid/widget/ListView;
.source "FlymeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FlymeListView$ScrollItem;,
        Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;,
        Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;
    }
.end annotation


# static fields
.field public static final DEFAULTDOWNOFFSETVALUE:F = 50.0f

.field public static final DEFAULTUPOFFSETVALUE:F = -50.0f

.field private static INVALUE_VALUE:F = 0.0f

.field public static final OFFSET_DOWN:I = 0x1

.field public static final OFFSET_NO:I = 0x3

.field public static final OFFSET_UP:I = 0x2


# instance fields
.field private mCurrentTouchPosition:F

.field private mEnableParallax:Z

.field private mLastTouchPosition:F

.field private mMoveLength:F

.field private mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

.field private mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

.field private mViewHolderHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 35
    sput v0, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 36
    sget v0, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget v0, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget v0, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/FlymeListView;)Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FlymeListView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    return-object v0
.end method

.method static synthetic access$300()F
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    return v0
.end method


# virtual methods
.method public addAnimateView(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewHolder"    # Landroid/view/View;

    .prologue
    const/high16 v0, -0x3db80000    # -50.0f

    const/high16 v1, 0x42480000    # 50.0f

    .line 160
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/FlymeListView;->addAnimateView(Landroid/view/View;Landroid/view/View;FF)V

    .line 161
    return-void
.end method

.method public addAnimateView(Landroid/view/View;Landroid/view/View;FF)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewHolder"    # Landroid/view/View;
    .param p3, "upOffset"    # F
    .param p4, "downOffset"    # F

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    const/high16 v1, 0x42480000    # 50.0f

    div-float v1, p4, v1

    const/high16 v2, -0x3db80000    # -50.0f

    div-float v2, p3, v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->addScrollItem(Landroid/view/View;Landroid/view/View;FF)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->isParallaxAnimationComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    invoke-interface {v0, p2}, Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;->onAddViewHolderWhenAnimation(Landroid/view/View;)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    if-nez v0, :cond_0

    .line 117
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_1
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    goto :goto_0

    .line 86
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    .line 88
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->cancleSmoothBackToOriginalPosition()V

    .line 89
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->isParallaxAnimationComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setParallaxAnimationComplete(Z)V

    .line 91
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/FlymeListView;->getViewHoldSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;->onAnimationStateChange(ILjava/util/HashSet;)V

    goto :goto_1

    .line 97
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    sget v1, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/FlymeListView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, -0x1

    .line 100
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FlymeListView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->translateItemY(F)V

    goto :goto_1

    .line 98
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 99
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    iget v2, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    goto :goto_2

    .line 100
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3e900000    # -15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 101
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    iget v2, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    goto :goto_2

    .line 107
    :pswitch_2
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    sget v1, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->startSmoothBackToOriginalPosition()V

    goto/16 :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getViewHoldSet()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public recycleScrollItem(Landroid/view/View;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/View;

    .prologue
    .line 125
    iget-boolean v2, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->getScrollItemHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->isParallaxAnimationComplete()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    invoke-interface {v2, p1}, Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;->onRecycleViewHolderWhenAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 127
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_3
    return-void

    .line 130
    .restart local v0    # "iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    .line 131
    .local v1, "scrollItem":Lcom/meizu/common/widget/FlymeListView$ScrollItem;
    invoke-virtual {v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getViewHolder()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->translateItemY(F)V

    .line 133
    sget v2, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->setOriginalTransilationY(F)V

    .line 134
    invoke-virtual {v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->reset()V

    .line 135
    iget-object v2, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->addScrollItemToCache(Lcom/meizu/common/widget/FlymeListView$ScrollItem;)V

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public setBaseDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setBaseDuration(I)V

    goto :goto_0
.end method

.method public setEnableParallax(Z)V
    .locals 1
    .param p1, "enableParallax"    # Z

    .prologue
    .line 59
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    .line 68
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-eqz v0, :cond_2

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;-><init>(Lcom/meizu/common/widget/FlymeListView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    goto :goto_1
.end method

.method public setParallaxAnimationListener(Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    .line 262
    return-void
.end method

.method public setScrollSensitivity(I)V
    .locals 1
    .param p1, "sensitivity"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setSensitivity(I)V

    goto :goto_0
.end method

.method public setSmoothBackInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setSmoothBackInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method public synchronousListenerState()V
    .locals 3

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->isParallaxAnimationComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FlymeListView;->getViewHoldSet()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;->onRunning(ILjava/util/HashSet;)V

    goto :goto_0
.end method
