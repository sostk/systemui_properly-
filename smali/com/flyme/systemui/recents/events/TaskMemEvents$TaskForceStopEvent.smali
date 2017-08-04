.class public Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;
.super Ljava/lang/Object;
.source "TaskMemEvents.java"


# instance fields
.field public releaseMem:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReleaseMem()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;->releaseMem:J

    return-wide v0
.end method

.method public setReleaseMem(J)Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;
    .locals 1
    .param p1, "releaseMem"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;->releaseMem:J

    .line 26
    return-object p0
.end method
