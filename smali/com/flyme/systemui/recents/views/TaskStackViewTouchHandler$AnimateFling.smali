.class Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimateFling"
.end annotation


# instance fields
.field public isOver:Z

.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

.field public toScroll:F


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;FZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;
    .param p2, "toScroll"    # F
    .param p3, "isOver"    # Z

    .prologue
    .line 354
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;->this$0:Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput p2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;->toScroll:F

    .line 356
    iput-boolean p3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewTouchHandler$AnimateFling;->isOver:Z

    .line 354
    return-void
.end method
