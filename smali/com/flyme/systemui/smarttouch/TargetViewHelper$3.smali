.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imeWillHide()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->updateFloatWindow(I)V

    .line 52
    return-void
.end method

.method public imeWillShow(I)V
    .locals 1
    .param p1, "imeTop"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->updateFloatWindow(I)V

    .line 47
    return-void
.end method

.method public movedWinHasBeenReset()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
