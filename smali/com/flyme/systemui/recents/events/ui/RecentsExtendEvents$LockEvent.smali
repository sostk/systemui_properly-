.class public Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;
.super Ljava/lang/Object;
.source "RecentsExtendEvents.java"


# instance fields
.field public final isLocked:Z

.field public final mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

.field public final mVibrate:Z


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/views/TaskView;ZZ)V
    .locals 0
    .param p1, "mTaskView"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "mVibrate"    # Z
    .param p3, "isLocked"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 13
    iput-boolean p2, p0, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;->mVibrate:Z

    .line 14
    iput-boolean p3, p0, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;->isLocked:Z

    .line 11
    return-void
.end method
