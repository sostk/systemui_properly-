.class Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Lmeizu/view/MoveWinManager$MoveWinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/WindowMoveHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/WindowMoveHelper;
    .param p2, "val$handler"    # Landroid/os/Handler;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imeWillHide()V
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "windowmove imeWillHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->-get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public imeWillShow(I)V
    .locals 3
    .param p1, "imeTop"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->-get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public movedWinHasBeenReset()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "windowmove movedWinHasBeenReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->-get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$2;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public toResetMovedWin()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "windowmove toResetMovedWin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->-get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$1;-><init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :cond_0
    return-void
.end method
