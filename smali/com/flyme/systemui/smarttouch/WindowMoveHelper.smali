.class public Lcom/flyme/systemui/smarttouch/WindowMoveHelper;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final moveStateListener:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

.field private final mwm:Lmeizu/view/MoveWinManager;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->moveStateListener:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listerner"    # Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->context:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->moveStateListener:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    .line 38
    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->handler:Landroid/os/Handler;

    .line 39
    invoke-static {p1}, Lmeizu/view/MoveWinManager;->getInstance(Landroid/content/Context;)Lmeizu/view/MoveWinManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmeizu/view/MoveWinManager;->setMoveWinListener(Lmeizu/view/MoveWinManager$MoveWinListener;)V

    .line 35
    return-void
.end method

.method public static resetOnDestroy(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string/jumbo v1, "SmartTouch"

    const-string/jumbo v2, "windowmove resetOnDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p0}, Lmeizu/view/MoveWinManager;->getInstance(Landroid/content/Context;)Lmeizu/view/MoveWinManager;

    move-result-object v0

    .line 31
    .local v0, "mwm":Lmeizu/view/MoveWinManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmeizu/view/MoveWinManager;->setMoveWinListener(Lmeizu/view/MoveWinManager$MoveWinListener;)V

    .line 32
    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 28
    return-void
.end method

.method public static resetWindow(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "windowmove resetWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p0}, Lmeizu/view/MoveWinManager;->getInstance(Landroid/content/Context;)Lmeizu/view/MoveWinManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 23
    return-void
.end method


# virtual methods
.method public isMoved()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    invoke-virtual {v2}, Lmeizu/view/MoveWinManager;->getMovedWinPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 114
    .local v0, "point":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final windowMoveIfNeed()V
    .locals 3

    .prologue
    .line 118
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "windowmove down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    const/4 v1, 0x1

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 120
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "window_down"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final windowNormalIfNeed()V
    .locals 3

    .prologue
    .line 124
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "windowmove normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 123
    :cond_0
    return-void
.end method
