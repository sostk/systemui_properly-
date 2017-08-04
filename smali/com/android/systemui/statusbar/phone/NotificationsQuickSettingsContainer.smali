.class public Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.super Landroid/widget/FrameLayout;
.source "NotificationsQuickSettingsContainer.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field private mInflated:Z

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mStackScroller:Landroid/view/View;

.field private mUserSwitcher:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 66
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 67
    .local v2, "userSwitcherVisible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 72
    .local v1, "statusBarVisible":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    .line 73
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    if-ne p2, v3, :cond_4

    .line 74
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    :goto_3
    invoke-super {p0, p1, v3, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    return v3

    .line 66
    .end local v1    # "statusBarVisible":Z
    .end local v2    # "userSwitcherVisible":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "userSwitcherVisible":Z
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "statusBarVisible":Z
    goto :goto_1

    .line 72
    :cond_2
    const/4 v0, 0x0

    .local v0, "keyguardThemeScreen":Z
    goto :goto_2

    .line 74
    .end local v0    # "keyguardThemeScreen":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    goto :goto_3

    .line 76
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    if-ne p2, v3, :cond_8

    .line 78
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .line 77
    :goto_4
    invoke-super {p0, p1, v3, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    return v3

    .line 79
    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    goto :goto_4

    .line 80
    :cond_6
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    goto :goto_4

    .line 81
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    goto :goto_4

    .line 83
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p2, v3, :cond_a

    .line 85
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 84
    :goto_5
    invoke-super {p0, p1, v3, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    return v3

    .line 86
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    goto :goto_5

    .line 88
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    if-ne p2, v3, :cond_d

    .line 91
    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    .line 90
    :goto_6
    invoke-super {p0, p1, v3, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    return v3

    .line 92
    :cond_b
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    goto :goto_6

    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    goto :goto_6

    .line 96
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    return v3
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    .line 61
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    const v1, 0x7f0f0246

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    .line 51
    const v1, 0x7f0f0247

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 52
    const v1, 0x7f0f00da

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 53
    const v1, 0x7f0f0248

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 54
    .local v0, "userSwitcher":Landroid/view/ViewStub;
    invoke-virtual {v0, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 55
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .line 48
    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 103
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    .line 101
    :cond_0
    return-void
.end method
