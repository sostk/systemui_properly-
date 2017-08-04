.class public Lcom/android/systemui/statusbar/phone/ObservableScrollView;
.super Landroid/widget/FrameLayout;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
    }
.end annotation


# instance fields
.field private mBlockFlinging:Z

.field private mHandlingTouchEvent:Z

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

.field private mTouchCancelled:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 40
    return-void
.end method

.method private getMaxScrollY()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 63
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 64
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 67
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 93
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v1, :cond_0

    .line 94
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 95
    return v2

    .line 97
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 108
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 98
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    if-eqz v1, :cond_3

    .line 99
    return v2

    .line 100
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v1, :cond_1

    .line 101
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 102
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 105
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 106
    return v2
.end method

.method public isHandlingTouchEvent()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return v0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 85
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 86
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 87
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 75
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 76
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 77
    return v0
.end method

.method public setBlockFlinging(Z)V
    .locals 0
    .param p1, "blockFlinging"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    .line 128
    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    .line 44
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 48
    return-void
.end method
