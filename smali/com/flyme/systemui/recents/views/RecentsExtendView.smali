.class public Lcom/flyme/systemui/recents/views/RecentsExtendView;
.super Landroid/widget/RelativeLayout;
.source "RecentsExtendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;
    }
.end annotation


# static fields
.field private static synthetic -com_flyme_systemui_recents_views_RecentsExtendView$BUTTON_STATESwitchesValues:[I


# instance fields
.field mLockButton:Landroid/widget/ImageView;

.field mLockText:Landroid/widget/TextView;

.field mLocked:Z

.field mMultiButton:Landroid/widget/ImageView;

.field mMultiText:Landroid/widget/TextView;

.field mPkgName:Ljava/lang/String;

.field mSecretButton:Landroid/widget/ImageView;

.field mSecretText:Landroid/widget/TextView;

.field mSecretive:Z

.field mTaskView:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method private static synthetic -getcom_flyme_systemui_recents_views_RecentsExtendView$BUTTON_STATESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->-com_flyme_systemui_recents_views_RecentsExtendView$BUTTON_STATESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->-com_flyme_systemui_recents_views_RecentsExtendView$BUTTON_STATESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->values()[Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->-com_flyme_systemui_recents_views_RecentsExtendView$BUTTON_STATESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 31
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    return-void
.end method

.method private setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "state"    # Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 106
    invoke-static {}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->-getcom_flyme_systemui_recents_views_RecentsExtendView$BUTTON_STATESwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 108
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 109
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 112
    :pswitch_2
    const v0, 0x7f020515

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 115
    :pswitch_3
    const v0, 0x7f02051a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 123
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 124
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_5
    goto :goto_0

    .line 127
    :pswitch_6
    const v0, 0x7f020517

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 130
    :pswitch_7
    const v0, 0x7f02051c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 133
    :pswitch_8
    const v0, 0x7f020519

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 138
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 139
    const v0, 0x66ffffff

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :pswitch_a
    goto :goto_0

    .line 142
    :pswitch_b
    const v0, 0x7f020516

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    :pswitch_c
    const v0, 0x7f02051b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 148
    :pswitch_d
    const v0, 0x7f020518

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
        :pswitch_4
    .end packed-switch

    .line 110
    :pswitch_data_1
    .packed-switch 0x7f0f01f5
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 125
    :pswitch_data_2
    .packed-switch 0x7f0f01f5
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch

    .line 140
    :pswitch_data_3
    .packed-switch 0x7f0f01f5
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 90
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 55
    :pswitch_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLocked:Z

    .line 57
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v2, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    iget-boolean v4, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLocked:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;-><init>(Lcom/flyme/systemui/recents/views/TaskView;ZZ)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLocked:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    .line 59
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$SnapBackEvent;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$SnapBackEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    goto :goto_1

    .line 63
    :pswitch_2
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v2, :cond_0

    .line 64
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    if-eqz v2, :cond_3

    .line 65
    invoke-static {}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->getManager()Lcom/flyme/systemui/recents/model/SecretTaskManager;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->unKeepSecretPkg(Ljava/lang/String;)Z

    .line 66
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mPkgName:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectBlurApp(Landroid/content/Context;Ljava/lang/String;I)V

    .line 71
    :goto_2
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    if-eqz v2, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    iput-boolean v1, v0, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    .line 73
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    :goto_4
    invoke-direct {p0, v1, v2, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    .line 74
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    iget-boolean v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    invoke-direct {v1, v2, v3}, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;-><init>(Lcom/flyme/systemui/recents/views/TaskView;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$SnapBackEvent;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/ui/TaskDragEvents$SnapBackEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 68
    :cond_3
    invoke-static {}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->getManager()Lcom/flyme/systemui/recents/model/SecretTaskManager;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->keepSecretPkg(Ljava/lang/String;)Z

    .line 69
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mPkgName:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectBlurApp(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move v1, v0

    .line 71
    goto :goto_3

    .line 73
    :cond_5
    sget-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    goto :goto_4

    .line 79
    :pswitch_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$MultiEvent;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$MultiEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskView;->startMulti()V

    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x7f0f01f5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 96
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;

    .prologue
    .line 156
    iget v1, p1, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;->mExtendOffset:F

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setTranslationX(F)V

    .line 158
    iget-object v1, p1, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    iput-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 159
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mPkgName:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->getManager()Lcom/flyme/systemui/recents/model/SecretTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->isSecretivePkg(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    .line 161
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    .line 162
    .local v0, "t":Lcom/flyme/systemui/recents/model/Task;
    iget-boolean v1, v0, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLocked:Z

    .line 163
    iget v1, v0, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockText:Landroid/widget/TextView;

    sget-object v3, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-direct {p0, v1, v2, v3}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    .line 165
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretText:Landroid/widget/TextView;

    sget-object v3, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-direct {p0, v1, v2, v3}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    .line 166
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiText:Landroid/widget/TextView;

    sget-object v3, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-direct {p0, v1, v2, v3}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    .line 155
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->isExistMulti:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/Utils;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiText:Landroid/widget/TextView;

    sget-object v3, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-direct {p0, v1, v2, v3}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    .line 173
    :goto_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretive:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    :goto_2
    invoke-direct {p0, v2, v3, v1}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    .line 174
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLocked:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    :goto_3
    invoke-direct {p0, v2, v3, v1}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiText:Landroid/widget/TextView;

    sget-object v3, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-direct {p0, v1, v2, v3}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->setButtonState(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;)V

    goto :goto_1

    .line 173
    :cond_2
    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    goto :goto_2

    .line 174
    :cond_3
    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    goto :goto_3
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownEndEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownEndEvent;

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 178
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f0f01f5

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockButton:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0f01f6

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockText:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0f01f7

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretButton:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0f01f8

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretText:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0f01f9

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiButton:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0f01fa

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/RecentsExtendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiText:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mSecretButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsExtendView;->mMultiButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
