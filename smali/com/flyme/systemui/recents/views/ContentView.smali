.class public Lcom/flyme/systemui/recents/views/ContentView;
.super Landroid/widget/FrameLayout;
.source "ContentView.java"


# instance fields
.field private mIgnoreTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/ContentView;->mIgnoreTouch:Z

    .line 15
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ContentView;->mIgnoreTouch:Z

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 40
    :pswitch_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-lez v1, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/ContentView;->mIgnoreTouch:Z

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 22
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/ContentView;->mIgnoreTouch:Z

    .line 20
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 29
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    .prologue
    .line 53
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;->isIgnore:Z

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/ContentView;->mIgnoreTouch:Z

    .line 52
    return-void
.end method
