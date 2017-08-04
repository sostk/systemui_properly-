.class public Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;
.super Ljava/lang/Object;
.source "QuickChangePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$1;,
        Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;
    }
.end annotation


# instance fields
.field private final FINISH_TIME:J

.field private isComplete:Z

.field private mAnimationStop:Z

.field private mAnimator:Landroid/animation/TimeAnimator;

.field private mCanChange:Z

.field private mDownX:F

.field private mDownY:F

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mGoalP:F

.field private mHandler:Landroid/os/Handler;

.field private mIsCancel:Z

.field private mIsFinish:Z

.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mP:F

.field private mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

.field private mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->isComplete:Z

    return v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mAnimationStop:Z

    return v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mCanChange:Z

    return v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mGoalP:F

    return v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mP:F

    return v0
.end method

.method static synthetic -get6(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Lcom/flyme/systemui/recents/model/IQuickChangeModel;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    return-object v0
.end method

.method static synthetic -get7(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Lcom/flyme/systemui/recents/views/IQuickChangeView;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mAnimationStop:Z

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsFinish:Z

    return p1
.end method

.method static synthetic -set2(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;F)F
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mP:F

    return p1
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->FINISH_TIME:J

    .line 30
    new-instance v0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$1;-><init>(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mFinishRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mAnimator:Landroid/animation/TimeAnimator;

    .line 44
    new-instance v0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;-><init>(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 65
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method


# virtual methods
.method public bind(Lcom/flyme/systemui/recents/model/IQuickChangeModel;Lcom/flyme/systemui/recents/views/IQuickChangeView;)V
    .locals 2
    .param p1, "model"    # Lcom/flyme/systemui/recents/model/IQuickChangeModel;
    .param p2, "view"    # Lcom/flyme/systemui/recents/views/IQuickChangeView;

    .prologue
    .line 69
    const-string/jumbo v0, "quickchange.presenter"

    const-string/jumbo v1, "bind"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    .line 71
    iput-object p2, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    .line 68
    return-void
.end method

.method public isQuickChangeShow()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->isShow()Z

    move-result v0

    return v0
.end method

.method onCancel()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->startAnimationToCurrent()V

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    const-string/jumbo v1, "cancel"

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->collcetMobEvent(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onCancelGlobalOrScreenOff()V
    .locals 2

    .prologue
    .line 144
    const-string/jumbo v0, "quickchange.presenter"

    const-string/jumbo v1, "cancel-global or screenoff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsFinish:Z

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onCancel()V

    .line 143
    :cond_2
    return-void
.end method

.method onFinish()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->startAnimationToNext()V

    .line 163
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mCanChange:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    const-string/jumbo v1, "succeed"

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->collcetMobEvent(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    const-string/jumbo v1, "fail"

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->collcetMobEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const-string/jumbo v5, "quickchange.presenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRecentEnter, pressure = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 84
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string/jumbo v5, "quickchange.presenter"

    const-string/jumbo v6, "motionEvent -- down"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/android/systemui/recents/Recents;->isRecentsShow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsCancel:Z

    .line 90
    return-void

    .line 92
    :cond_1
    iput v8, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mP:F

    .line 93
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsCancel:Z

    .line 94
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsFinish:Z

    .line 95
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->isComplete:Z

    .line 96
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mAnimationStop:Z

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mDownX:F

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mDownY:F

    .line 99
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    invoke-interface {v3}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->checkIfNeedInitAndContinue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    invoke-interface {v3}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->preInitData()V

    .line 104
    :goto_1
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 102
    :cond_2
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsCancel:Z

    goto :goto_1

    .line 107
    :pswitch_1
    iget-boolean v5, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsCancel:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsFinish:Z

    if-eqz v5, :cond_4

    .line 108
    :cond_3
    return-void

    .line 111
    :cond_4
    iget-object v5, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    invoke-interface {v5}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->isBindData()Z

    move-result v5

    if-nez v5, :cond_6

    .line 112
    iget-object v5, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    invoke-interface {v5}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->loadData()Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    move-result-object v1

    .line 113
    .local v1, "data":Lcom/flyme/systemui/recents/bean/QuickChangeBean;
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->getNext()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    move v3, v4

    :cond_5
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mCanChange:Z

    .line 114
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    iget-boolean v5, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mCanChange:Z

    invoke-interface {v3, v5, v8}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->update(ZF)V

    .line 115
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    invoke-interface {v3, v1}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->show(Lcom/flyme/systemui/recents/bean/QuickChangeBean;)V

    .line 116
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mAnimator:Landroid/animation/TimeAnimator;

    iget-object v5, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v3, v5}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 117
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v3}, Landroid/animation/TimeAnimator;->start()V

    .line 120
    .end local v1    # "data":Lcom/flyme/systemui/recents/bean/QuickChangeBean;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    .line 122
    .local v2, "mCurrentPressure":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mDownX:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mDownY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v3, v5

    const/high16 v5, 0x41a00000    # 20.0f

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_7

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_8

    .line 123
    :cond_7
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mIsCancel:Z

    .line 124
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onCancel()V

    .line 125
    return-void

    .line 128
    :cond_8
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 129
    return-void

    .line 131
    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->updateGoalP(F)V

    .line 132
    iget-object v3, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 137
    .end local v2    # "mCurrentPressure":F
    :pswitch_2
    const-string/jumbo v3, "quickchange.presenter"

    const-string/jumbo v4, "motionEvent -- up"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onCancelGlobalOrScreenOff()V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onStop()V
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    .line 193
    iget v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mGoalP:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mCanChange:Z

    if-eqz v1, :cond_0

    .line 194
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;-><init>(Z)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    invoke-interface {v1}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->getData()Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->getNext()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setImageCache(Landroid/graphics/Bitmap;)V

    .line 196
    invoke-static {}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->disableAnimationScale()V

    .line 197
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    invoke-interface {v1}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->startRecentsActivity()V

    .line 198
    new-instance v0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;-><init>(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)V

    .line 214
    .local v0, "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->registerResumeListener(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;Ljava/lang/Object;)V

    .line 191
    .end local v0    # "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeModel:Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    invoke-interface {v1}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->clearData()V

    .line 217
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mQuickChangeView:Lcom/flyme/systemui/recents/views/IQuickChangeView;

    invoke-interface {v1}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->dismiss()V

    goto :goto_0
.end method

.method startAnimationToCurrent()V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "quickchange.presenter"

    const-string/jumbo v1, "startAnimationToCurrent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mGoalP:F

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->isComplete:Z

    .line 176
    return-void
.end method

.method startAnimationToNext()V
    .locals 2

    .prologue
    .line 171
    const-string/jumbo v0, "quickchange.presenter"

    const-string/jumbo v1, "startAnimationToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mGoalP:F

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->isComplete:Z

    .line 170
    return-void
.end method

.method updateGoalP(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 183
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 184
    const/4 p1, 0x0

    .line 188
    :cond_0
    :goto_0
    iput p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->mGoalP:F

    .line 182
    return-void

    .line 185
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 186
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0
.end method
