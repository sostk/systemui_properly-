.class abstract Lcom/flyme/systemui/smarttouch/TargetViewHelper;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;,
        Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;,
        Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;
    }
.end annotation


# static fields
.field private static synthetic -com_flyme_systemui_smarttouch_TargetViewHelper$UserGestureSwitchesValues:[I


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private haveDeal:Z

.field private final moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

.field onClickAnimationRunnable:Ljava/lang/Runnable;

.field private final optimizeWhenBoundary:I

.field private final recentTask:Lcom/flyme/systemui/smarttouch/RecentTask;

.field final resetShowRunnable:Ljava/lang/Runnable;

.field private final screenWidth:I


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->haveDeal:Z

    return v0
.end method

.method private static synthetic -getcom_flyme_systemui_smarttouch_TargetViewHelper$UserGestureSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-com_flyme_systemui_smarttouch_TargetViewHelper$UserGestureSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-com_flyme_systemui_smarttouch_TargetViewHelper$UserGestureSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->values()[Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOWN:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->LEFT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ONE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->UP:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-com_flyme_systemui_smarttouch_TargetViewHelper$UserGestureSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/smarttouch/TargetViewHelper;Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V
    .locals 0
    .param p1, "userGesture"    # Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$2;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    .line 39
    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    new-instance v2, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    .line 56
    new-instance v1, Lcom/flyme/systemui/smarttouch/RecentTask;

    invoke-direct {v1, p1, p2}, Lcom/flyme/systemui/smarttouch/RecentTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentTask:Lcom/flyme/systemui/smarttouch/RecentTask;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 59
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->screenWidth:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b029d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->optimizeWhenBoundary:I

    .line 35
    return-void
.end method

.method private moveDown()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowMoveIfNeed()V

    .line 285
    return-void
.end method

.method private processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V
    .locals 4
    .param p1, "userGesture"    # Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->haveDeal:Z

    .line 174
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 172
    :goto_0
    return-void

    .line 177
    :cond_0
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v0, :cond_1

    .line 178
    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->-getcom_flyme_systemui_smarttouch_TargetViewHelper$UserGestureSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "gesture double click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 250
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveDown()V

    goto :goto_0

    .line 182
    :pswitch_2
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "gesture left"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 184
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 186
    :pswitch_3
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentL()V

    goto :goto_0

    .line 191
    :pswitch_4
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "gesture right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 193
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_leftright:I

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 195
    :pswitch_5
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentR()V

    goto :goto_0

    .line 200
    :pswitch_6
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "gesture up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 202
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_up:I

    packed-switch v0, :pswitch_data_4

    goto :goto_0

    .line 204
    :pswitch_7
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 207
    :pswitch_8
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->killTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 210
    :pswitch_9
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->expandTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 213
    :pswitch_a
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->toHome(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 216
    :pswitch_b
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->menu(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 221
    :pswitch_c
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "gesture down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 223
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_down:I

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    .line 225
    :pswitch_d
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveDown()V

    goto/16 :goto_0

    .line 228
    :pswitch_e
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/Simulate;->expandNotifications(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 231
    :pswitch_f
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 234
    :pswitch_10
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->killTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 239
    :pswitch_11
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "gesture click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 241
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_click:I

    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    .line 243
    :pswitch_12
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->back(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 255
    :pswitch_13
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/Simulate;->expandNotifications(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 258
    :pswitch_14
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 261
    :pswitch_15
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/Simulate;->expandTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_11
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 250
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 184
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 193
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 202
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 223
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 241
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method private recentL()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentTask:Lcom/flyme/systemui/smarttouch/RecentTask;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/RecentTask;->recentL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    :cond_0
    return-void
.end method

.method private recentR()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->recentTask:Lcom/flyme/systemui/smarttouch/RecentTask;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/RecentTask;->recentR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    :cond_0
    return-void
.end method


# virtual methods
.method public animateOnUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x64

    .line 92
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v0, v1

    .line 97
    .local v0, "eX":I
    iget v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->optimizeWhenBoundary:I

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->screenWidth:I

    iget v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->optimizeWhenBoundary:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/flyme/systemui/smarttouch/TargetViewHelper$5;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$5;-><init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initOnDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    iput-boolean v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->haveDeal:Z

    .line 70
    return-void
.end method

.method public final onDoubleTapUp()Z
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 76
    float-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v2, v4, v6

    .line 77
    .local v2, "p":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 78
    .local v0, "mp":I
    const/16 v1, 0x2d

    if-ge v0, v1, :cond_0

    .line 79
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOWN:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    .line 75
    :goto_0
    return-void

    .line 80
    :cond_0
    const/16 v1, 0x87

    if-ge v0, v1, :cond_2

    .line 81
    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 82
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->LEFT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    goto :goto_0

    .line 87
    :cond_2
    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->UP:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    goto :goto_0
.end method

.method public final onScroll(ZI)Z
    .locals 6
    .param p1, "isDrag"    # Z
    .param p2, "rotation"    # I

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, "message":Landroid/os/Message;
    const/4 v1, -0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 128
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 129
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onSingleTapUp()Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ONE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->processUserGesture(Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onUnLock()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 159
    :cond_0
    return-void
.end method

.method public final resetForMove()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->moveHelper:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    :cond_0
    return-void
.end method

.method public abstract updateFloatWindow(I)V
.end method
