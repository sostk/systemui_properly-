.class public final Lcom/meizu/flyme/activeview/moveline/RootTimeline;
.super Lcom/meizu/flyme/activeview/moveline/BaseTimeline;
.source "RootTimeline.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/moveline/TimelineTicker$TimelineTickerListener;


# instance fields
.field private autoStop:I

.field private mNextSleepFrame:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;-><init>()V

    const/16 v0, 0x3c

    .line 7
    iput v0, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->autoStop:I

    .line 8
    iget v0, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->autoStop:I

    iput v0, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->mNextSleepFrame:I

    .line 12
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->startTime:J

    .line 13
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->addListener(Lcom/meizu/flyme/activeview/moveline/TimelineTicker$TimelineTickerListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    return v0
.end method

.method public onUpdate(J)V
    .locals 5
    .param p1, "tickerTime"    # J

    .prologue
    .line 19
    iget-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->startTime:J

    sub-long v0, p1, v2

    .line 20
    .local v0, "thisLineTime":J
    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->update(J)V

    .line 21
    return-void
.end method

.method protected update(J)V
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 26
    .local v0, "animation":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_0
    if-nez v0, :cond_1

    .line 39
    sget-object v3, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getFrame()I

    move-result v3

    iget v4, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->mNextSleepFrame:I

    if-ge v3, v4, :cond_7

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 27
    :cond_1
    iget-object v2, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 28
    .local v2, "next":Lcom/meizu/flyme/activeview/moveline/Animation;
    iget-boolean v3, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->isActive:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 35
    :cond_2
    :goto_3
    move-object v0, v2

    goto :goto_0

    .line 28
    :cond_3
    iget-wide v6, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    cmp-long v3, p1, v6

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_2

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_4

    .line 29
    :cond_5
    iget-boolean v3, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->mReversing:Z

    if-eqz v3, :cond_6

    .line 32
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->getDuration()I

    move-result v3

    int-to-long v6, v3

    iget-wide v8, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    sub-long v8, p1, v8

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    goto :goto_3

    .line 30
    :cond_6
    iget-wide v6, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    sub-long v6, p1, v6

    invoke-virtual {v0, v6, v7}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    goto :goto_3

    .line 40
    .end local v2    # "next":Lcom/meizu/flyme/activeview/moveline/Animation;
    :cond_7
    sget-object v3, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getFrame()I

    move-result v3

    iget v4, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->autoStop:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->mNextSleepFrame:I

    .line 41
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 42
    if-eqz v0, :cond_8

    .line 45
    const/4 v1, 0x1

    .line 46
    .local v1, "isAllPaused":Z
    :goto_5
    if-nez v0, :cond_9

    .line 53
    :goto_6
    if-eqz v1, :cond_0

    .line 54
    sget-object v3, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->stop()V

    goto :goto_1

    .line 43
    .end local v1    # "isAllPaused":Z
    :cond_8
    sget-object v3, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->stop()V

    goto :goto_1

    .line 47
    .restart local v1    # "isAllPaused":Z
    :cond_9
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 51
    iget-object v0, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_5

    .line 48
    :cond_a
    const/4 v1, 0x0

    goto :goto_6
.end method
