.class public Lcom/flyme/systemui/smarttouch/SmartTouch;
.super Ljava/lang/Object;
.source "SmartTouch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$1;
    }
.end annotation


# static fields
.field public static final sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

.field public static smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;


# instance fields
.field public behavior_alpha:I

.field public behavior_click:I

.field public behavior_doubleclick:I

.field public behavior_down:I

.field public behavior_leftright:I

.field public behavior_long:I

.field public behavior_up:I

.field private final context:Landroid/content/Context;

.field public defAlpha:F

.field private floatX:I

.field private floatY:I

.field private final handler:Landroid/os/Handler;

.field private lastImeTop:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

.field private final mTopViewGroup:Landroid/view/ViewGroup;

.field private final mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/smarttouch/SmartTouch;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    return v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/smarttouch/SmartTouch;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    return v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/smarttouch/SmartTouch;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->lastImeTop:I

    return v0
.end method

.method static synthetic -get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    return p1
.end method

.method static synthetic -set2(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->lastImeTop:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-direct {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;-><init>()V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    iput v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    .line 646
    iput v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    .line 647
    iput v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_long:I

    .line 648
    iput v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_up:I

    .line 649
    iput v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    .line 650
    iput v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    .line 651
    const/16 v1, 0xff

    iput v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_alpha:I

    .line 652
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    .line 70
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    .line 71
    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    .line 72
    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    .line 73
    const v1, 0x7f0400b3

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    .line 74
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0f022e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/smarttouch/SmartTouchView;

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    .line 75
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-virtual {v1, v3}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setScaleX(F)V

    .line 76
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mStableShow:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-virtual {v1, v3}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setScaleY(F)V

    .line 77
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->showSmartTouch()V

    .line 80
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    sput-object p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 84
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onSettingsChange()V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.meizu.theme.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public static final onForceHide(Z)V
    .locals 3
    .param p0, "isHide"    # Z

    .prologue
    .line 598
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean p0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    .line 600
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    if-nez p0, :cond_2

    .line 603
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "show when ForceHide cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    .line 597
    :goto_0
    return-void

    .line 607
    :cond_1
    const-string/jumbo v0, "SmartTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not show when lid dismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_2
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "hide when ForceHide"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    .line 612
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->onUnLock()V

    goto :goto_0
.end method

.method public static final onKeyguardChange(Z)V
    .locals 3
    .param p0, "isShow"    # Z

    .prologue
    .line 559
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean p0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    .line 561
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    if-nez p0, :cond_2

    .line 564
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "show when keyguard dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    .line 558
    :goto_0
    return-void

    .line 568
    :cond_1
    const-string/jumbo v0, "SmartTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not show when keyguard dismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_2
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "hide when keyguard show"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    .line 573
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mainTouchListener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->onUnLock()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->resetOnDestroy(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->dismissSmartTouch()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 91
    return-void
.end method

.method final dismissSmartTouch()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public final hide()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$4;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$5;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    .line 147
    const-wide/16 v2, 0x3e8

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method public final onSettingsChange()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    .line 617
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 619
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "mz_smart_touch_behavior_alpha"

    .line 618
    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_alpha:I

    .line 621
    const-string/jumbo v3, "mz_smart_touch_behavior_click"

    .line 620
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    .line 623
    const-string/jumbo v3, "mz_smart_touch_behavior_doubleclick"

    .line 622
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    .line 625
    const-string/jumbo v3, "mz_smart_touch_behavior_long"

    .line 624
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_long:I

    .line 627
    const-string/jumbo v3, "mz_smart_touch_behavior_up"

    .line 626
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_up:I

    .line 629
    const-string/jumbo v3, "mz_smart_touch_behavior_down"

    .line 628
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    .line 631
    const-string/jumbo v3, "mz_smart_touch_behavior_leftright"

    .line 630
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    .line 632
    const-string/jumbo v3, "mz_float_touch_enable"

    iget v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    if-nez v4, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 635
    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->resetWindow(Landroid/content/Context;)V

    .line 639
    :cond_1
    iget v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_alpha:I

    const/16 v2, 0x28

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    .line 640
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 642
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 616
    return-void
.end method

.method final showSmartTouch()V
    .locals 7

    .prologue
    const v4, 0x7f0b029e

    const/4 v6, 0x2

    .line 152
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 153
    const/16 v3, 0x7e1

    .line 152
    invoke-direct {v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 154
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v3, "SmartTouch"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 156
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 159
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    const-string/jumbo v4, "smarttouch"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 160
    .local v2, "smarttouch":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 161
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "position_x"

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    .line 162
    const-string/jumbo v3, "position_y"

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x3c

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    .line 164
    iget v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatX:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    iget v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->floatY:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 166
    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 167
    const v3, 0x1000108

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->context:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 169
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    .line 168
    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    return-void
.end method

.method public final toGone()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$2;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public final toVisible()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouch$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$3;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method
