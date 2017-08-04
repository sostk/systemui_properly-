.class Lcom/flyme/systemui/recents/views/TaskStackView$11;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;->onEvent(Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$11;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$11;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->-wrap0(Lcom/flyme/systemui/recents/views/TaskStackView;)V

    .line 1431
    return-void
.end method
