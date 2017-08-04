.class public Lcom/android/keyguard/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mHasPerformedLongPress:Z

.field private mLongPressTimeout:I

.field private mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

.field private mScaledTouchSlop:I

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/CheckLongPressHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/CheckLongPressHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/CheckLongPressHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return p1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    .line 45
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mLongPressTimeout:I

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 43
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    iput-object v2, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    .line 71
    :cond_0
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 62
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 63
    .local v2, "y":F
    iget v4, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownX:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    const/4 v1, 0x1

    .line 64
    .local v1, "xMoved":Z
    :goto_0
    iget v4, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownY:F

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v3, 0x1

    .line 66
    .local v3, "yMoved":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 60
    :cond_1
    return-void

    .line 63
    .end local v1    # "xMoved":Z
    .end local v3    # "yMoved":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "xMoved":Z
    goto :goto_0

    .line 64
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "yMoved":Z
    goto :goto_1
.end method

.method public postCheckForLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownX:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownY:F

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/android/keyguard/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    iget v2, p0, Lcom/android/keyguard/CheckLongPressHelper;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method
