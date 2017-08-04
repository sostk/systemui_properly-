.class Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->imeWillShow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imeTop:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$imeTop"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->isMoved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-virtual {v1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v1, 0x5

    .line 75
    .local v0, "position":I
    if-gtz v0, :cond_1

    .line 76
    const-string/jumbo v1, "SmartTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowmove imeWillShow : error <0 and use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->-get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v1

    iget v2, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-interface {v1, v2}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;->imeWillShow(I)V

    .line 72
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v1, "SmartTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowmove imeWillShow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1$3;->this$1:Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/WindowMoveHelper;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper;->-get0(Lcom/flyme/systemui/smarttouch/WindowMoveHelper;)Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;->imeWillShow(I)V

    goto :goto_0
.end method
