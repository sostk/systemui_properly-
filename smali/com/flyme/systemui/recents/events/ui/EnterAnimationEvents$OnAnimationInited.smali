.class public Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;
.super Ljava/lang/Object;
.source "EnterAnimationEvents.java"


# instance fields
.field public final end:Lcom/flyme/systemui/recents/views/TaskViewTransform;

.field public final onlyOneCard:Z

.field public final start:Lcom/flyme/systemui/recents/views/TaskViewTransform;


# direct methods
.method public constructor <init>(ZLcom/flyme/systemui/recents/views/TaskViewTransform;Lcom/flyme/systemui/recents/views/TaskViewTransform;)V
    .locals 0
    .param p1, "onlyOneCard"    # Z
    .param p2, "start"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .param p3, "end"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;->onlyOneCard:Z

    .line 30
    iput-object p2, p0, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;->start:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 31
    iput-object p3, p0, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;->end:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 28
    return-void
.end method
