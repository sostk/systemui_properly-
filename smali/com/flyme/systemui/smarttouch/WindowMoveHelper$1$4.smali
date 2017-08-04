.class Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->imeWillHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$4;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->-get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;->imeWillHide()V

    .line 93
    return-void
.end method
