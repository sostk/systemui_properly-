.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAccessibilityDisplayObserver:Landroid/database/ContentObserver;

.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBlurModeSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayDaltonizer:Z

.field private mDisplayInversion:Z

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mForceStaticBlur:Z

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mOnAllPanelsCollapsedRunnable:Ljava/lang/Runnable;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field mScrollTriggered:Z

.field private mVirtualDisplay:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVirtualDisplay:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayDaltonizer:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayInversion:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mForceStaticBlur:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVirtualDisplay:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->DEBUG:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    .line 333
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlurModeSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 371
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;

    .line 372
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 371
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mAccessibilityDisplayObserver:Landroid/database/ContentObserver;

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->initDynamicBlurSwitch(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private initDynamicBlurSwitch(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->registerReceiver(Landroid/content/Context;)V

    .line 318
    const-string/jumbo v2, "accessibility_display_inversion_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 319
    .local v1, "displayInversionUri":Landroid/net/Uri;
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 320
    .local v0, "displayDaltonizerUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mAccessibilityDisplayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mAccessibilityDisplayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 312
    return-void
.end method

.method private isForceStaticBlur()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mVirtualDisplay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mForceStaticBlur:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayInversion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayDaltonizer:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.FORCE_STATIC_BLUR"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlurModeSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    return-void
.end method

.method private scrollBack(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 230
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v1, v2

    .line 235
    .local v1, "rawX":I
    if-nez v0, :cond_0

    .line 239
    int-to-double v6, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getWidth()I

    move-result v2

    int-to-double v8, v2

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    cmpl-double v2, v6, v8

    if-lez v2, :cond_4

    int-to-double v6, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getWidth()I

    move-result v2

    int-to-double v8, v2

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    cmpg-double v2, v6, v8

    if-gez v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 245
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    .line 250
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 251
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrollTriggered:Z

    if-eqz v2, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->doScrollBack()V

    .line 225
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 239
    goto :goto_0
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 93
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f0f0240

    if-ne v0, v1, :cond_0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 91
    :cond_0
    return-void
.end method

.method public doScrollBack()V
    .locals 4

    .prologue
    .line 261
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 274
    const-wide/16 v2, 0x96

    .line 261
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    return v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOnAllPanelsCollapsedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOnAllPanelsCollapsedRunnable:Ljava/lang/Runnable;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOnAllPanelsCollapsedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 155
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isForceStaticBlur()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBlur(ZZ)V

    .line 134
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAttachedToWindow()V

    .line 287
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onClosingFinished()V

    .line 195
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onDetachedFromWindow()V

    .line 292
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    .line 207
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 86
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "openPanel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 163
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 160
    return-void
.end method

.method public onPanelPeeked()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isForceStaticBlur()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBlur(ZZ)V

    .line 127
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 110
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 113
    const/4 v1, 0x1

    return v1

    .line 115
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->scrollBack(Landroid/view/MotionEvent;)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 184
    .local v0, "barConsumedEvent":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingStarted()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 188
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "expand"    # Z

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingStopped(Z)V

    .line 201
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .locals 2
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "frac"    # F
    .param p3, "expanded"    # Z

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 218
    return-void
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public removeOnAllPanelsCollapsedRunnable()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOnAllPanelsCollapsedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 2
    .param p1, "touch"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 77
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 81
    return-void
.end method

.method public userSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 283
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleBatteryPercent()V

    .line 282
    return-void
.end method
