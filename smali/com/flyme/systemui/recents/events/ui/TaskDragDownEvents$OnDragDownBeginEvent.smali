.class public Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;
.super Ljava/lang/Object;
.source "TaskDragDownEvents.java"


# instance fields
.field public mExtendOffset:F

.field public final mTaskView:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 10
    return-void
.end method
