.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    }
.end annotation


# instance fields
.field private mExpandable:Z

.field private mExpansionDisabled:Z

.field private mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mHasUserChangedExpansion:Z

.field private mIsHeadsUp:Z

.field private mIsSystemExpanded:Z

.field private mLine:Landroid/view/View;

.field private mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mMaxExpandHeight:I

.field private final mNotificationSidePadding:I

.field private mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mRowMaxHeight:I

.field private mRowMinHeight:I

.field private mRowSettingHeight:I

.field private mSensitive:Z

.field private mShowSetting:Z

.field private mShowingPublic:Z

.field private mShowingPublicForIntrinsicHeight:Z

.field private mShowingPublicInitialized:Z

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mVetoButton:Landroid/view/View;

.field private mWasReset:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowSettingHeight:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    const v1, 0x7f0b028d

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationSidePadding:I

    .line 153
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationSidePadding:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSidePadding(I)V

    .line 148
    return-void
.end method

.method private animateShowingPublic(JJ)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 467
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 468
    .local v0, "source":Landroid/view/View;
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 469
    .local v1, "target":Landroid/view/View;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 470
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 473
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 474
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 478
    new-instance v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 474
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 484
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 485
    const/high16 v3, 0x3f800000    # 1.0f

    .line 484
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 466
    return-void

    .line 467
    .end local v0    # "source":Landroid/view/View;
    .end local v1    # "target":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .restart local v0    # "source":Landroid/view/View;
    goto :goto_0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .restart local v1    # "target":Landroid/view/View;
    goto :goto_1
.end method

.method private getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-nez v0, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    .line 383
    :goto_0
    return v0

    .line 384
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logExpansionEvent(ZZ)V
    .locals 3
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 571
    .local v0, "nowExpanded":Z
    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    .line 569
    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "expandedChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 90
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 85
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 95
    if-eqz p2, :cond_0

    .line 96
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 99
    const v2, 0x1020040

    .line 98
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .local v1, "rightIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 94
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "rightIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "running"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 107
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 108
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 109
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 104
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 114
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    instance-of v3, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 115
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 116
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method private updateBottom(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 522
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 523
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTop()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 524
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 520
    return-void
.end method

.method private updateMaxExpandHeight()V
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 425
    .local v0, "intrinsicBefore":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 422
    :cond_0
    return-void

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    goto :goto_0
.end method

.method private updateVetoButton()V
    .locals 2

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 490
    return-void

    .line 492
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyExpansionToLayout()V
    .locals 2

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 343
    .local v0, "expand":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    if-eqz v1, :cond_0

    .line 344
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowSettingHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    .line 340
    :goto_0
    return-void

    .line 346
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_1

    .line 347
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    goto :goto_0

    .line 349
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    goto :goto_0
.end method

.method protected filterMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->filterMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 358
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    if-eqz v1, :cond_0

    .line 359
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowSettingHeight:I

    return v1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    return v1

    .line 365
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 366
    .local v0, "inExpansionState":Z
    if-nez v0, :cond_2

    .line 368
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    return v1

    .line 371
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getMaxExpandHeight()I
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 531
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    return v1
.end method

.method public getRowSettingHeight()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowSettingHeight:I

    return v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpandable()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0
.end method

.method public isMaxExpandHeightInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 556
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSettingShow()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    return v0
.end method

.method public isSystemExpanded()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    return v0
.end method

.method public notifyContentUpdated()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->notifyContentUpdated()V

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->notifyContentUpdated()V

    .line 550
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBottom(I)V

    .line 417
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 201
    const v1, 0x7f0f025e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 202
    const v1, 0x7f0f025d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 203
    const v1, 0x7f0f0260

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 204
    .local v0, "gutsStub":Landroid/view/ViewStub;
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 216
    const v1, 0x7f0f025f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    .line 218
    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLine:Landroid/view/View;

    .line 199
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 389
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 390
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    if-eqz v3, :cond_5

    :cond_0
    const/4 v2, 0x0

    .line 391
    .local v2, "updateExpandHeight":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateMaxExpandHeight()V

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowSettingHeight:I

    if-nez v3, :cond_1

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowSettingHeight:I

    .line 397
    :cond_1
    if-eqz v2, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyExpansionToLayout()V

    .line 400
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    .line 402
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationSidePadding:I

    .line 403
    .local v0, "l":I
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationSidePadding:I

    sub-int v1, p4, v3

    .line 404
    .local v1, "r":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    if-eqz v3, :cond_3

    .line 405
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationGuts;->getBottom()I

    move-result v7

    invoke-virtual {v3, v0, v6, v1, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->layout(IIII)V

    .line 407
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    int-to-float v3, v3

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 408
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    if-eqz v6, :cond_4

    move v5, v4

    :cond_4
    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v5, v1, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->layout(IIII)V

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v5, v1, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->layout(IIII)V

    .line 411
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLine:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLine:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 412
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLine:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 388
    return-void

    .line 390
    .end local v0    # "l":I
    .end local v1    # "r":I
    .end local v2    # "updateExpandHeight":Z
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "updateExpandHeight":Z
    goto/16 :goto_0

    .restart local v0    # "l":I
    .restart local v1    # "r":I
    :cond_6
    move v3, v5

    .line 407
    goto :goto_1
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 228
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 231
    const/4 v1, 0x1

    return v1

    .line 233
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->reset()V

    .line 163
    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 165
    .local v0, "wasExpanded":Z
    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    .line 166
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 167
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 168
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 169
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 170
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 171
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 172
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 177
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 179
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    .line 161
    return-void
.end method

.method public resetHeight()V
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetActualHeight()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onHeightReset()V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestLayout()V

    .line 183
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(I)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(I)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLine:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidate()V

    .line 516
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    .line 506
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 542
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 541
    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 240
    .local v0, "showing":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 237
    :cond_0
    return-void
.end method

.method public setExpandable(Z)V
    .locals 0
    .param p1, "expandable"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 254
    return-void
.end method

.method public setExpansionDisabled(Z)V
    .locals 2
    .param p1, "expansionDisabled"    # Z

    .prologue
    .line 320
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-eq p1, v1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 322
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    .line 323
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 319
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    .line 565
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 0
    .param p1, "isHeadsUp"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 140
    return-void
.end method

.method public setHeightRange(II)V
    .locals 0
    .param p1, "rowMinHeight"    # I
    .param p2, "rowMaxHeight"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    .line 247
    iput p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    .line 245
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 5
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 442
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 443
    .local v0, "oldShowingPublic":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v2, :cond_0

    .end local p1    # "hideSensitive":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 444
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v2, v0, :cond_1

    .line 445
    return-void

    .restart local p1    # "hideSensitive":Z
    :cond_0
    move p1, v1

    .line 443
    goto :goto_0

    .line 449
    .end local p1    # "hideSensitive":Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 451
    :cond_2
    if-nez p2, :cond_5

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 453
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 454
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 456
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 457
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 462
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 441
    return-void

    :cond_3
    move v2, v3

    .line 456
    goto :goto_1

    :cond_4
    move v3, v1

    .line 457
    goto :goto_2

    .line 459
    :cond_5
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJ)V

    goto :goto_3
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 1
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_0

    .end local p1    # "hideSensitive":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    .line 436
    return-void

    .line 437
    .restart local p1    # "hideSensitive":Z
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setIconAnimationRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 80
    return-void
.end method

.method public setSensitive(Z)V
    .locals 0
    .param p1, "sensitive"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 432
    return-void
.end method

.method public setShowSetting(Z)V
    .locals 1
    .param p1, "showSetting"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 581
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowSetting:Z

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->reloadData()V

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyExpansionToLayout()V

    .line 579
    :cond_0
    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowSettingHeight:I

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    .line 125
    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v1, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 310
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 312
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 307
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 3
    .param p1, "userExpanded"    # Z

    .prologue
    const/4 v2, 0x1

    .line 275
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 277
    .local v0, "wasExpanded":Z
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 279
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 274
    return-void

    .line 275
    .end local v0    # "wasExpanded":Z
    :cond_1
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 0
    .param p1, "userLocked"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 291
    return-void
.end method
