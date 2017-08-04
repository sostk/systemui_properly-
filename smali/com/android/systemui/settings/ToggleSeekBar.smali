.class public Lcom/android/systemui/settings/ToggleSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "ToggleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;
    }
.end annotation


# instance fields
.field private mDisableVerticalSeek:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mOnSeekBarTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    .line 36
    return-void
.end method

.method private onTrackingStarted()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    .line 109
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mOnSeekBarTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mOnSeekBarTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    invoke-interface {v0}, Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;->onStartTrackingTouch()V

    .line 107
    :cond_0
    return-void
.end method

.method private onTrackingStopped()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    .line 114
    return-void
.end method


# virtual methods
.method public disableVerticalSeek(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    .line 102
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    return v6

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 45
    invoke-virtual {p0, v7}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 49
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    if-eqz v4, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 51
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 53
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 85
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 86
    .local v1, "result":Z
    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    if-eqz v4, :cond_6

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_3

    .line 88
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_3

    .line 89
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 97
    :cond_3
    :goto_1
    return v1

    .line 55
    .end local v1    # "result":Z
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :pswitch_0
    iput v3, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    .line 56
    iput v2, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    goto :goto_0

    .line 60
    :pswitch_1
    iget v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    sub-float v0, v3, v4

    .line 61
    .local v0, "h":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 62
    iput v3, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    .line 63
    iput v2, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    .line 64
    return v6

    .line 66
    :cond_4
    iput v3, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    .line 67
    iput v2, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    .line 68
    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    if-nez v4, :cond_2

    .line 69
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_5

    .line 70
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 72
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->onTrackingStarted()V

    goto :goto_0

    .line 78
    .end local v0    # "h":F
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    if-eqz v4, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->onTrackingStopped()V

    goto :goto_0

    .line 93
    .end local v2    # "x":F
    .end local v3    # "y":F
    .restart local v1    # "result":Z
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    if-eqz v4, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->onTrackingStopped()V

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnSeekBarTrackingListener(Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mOnSeekBarTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    .line 118
    return-void
.end method
