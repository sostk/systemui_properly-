.class public Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;
.super Ljava/lang/Object;
.source "TaskMemEvents.java"


# instance fields
.field public releaseMem:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReleaseMem()J
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;->releaseMem:J

    return-wide v0
.end method

.method public setReleaseMem(J)Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;
    .locals 1
    .param p1, "releaseMem"    # J

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;->releaseMem:J

    .line 13
    return-object p0
.end method
