.class public Lcom/meizu/flyme/activeview/moveline/Timeline;
.super Lcom/meizu/flyme/activeview/moveline/BaseTimeline;
.source "Timeline.java"


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:Ljava/lang/String; = "restart"

.field public static final REVERSE:Ljava/lang/String; = "reverse"


# instance fields
.field private mCurrentIteration:I

.field private mPlayingBackwards:Z

.field private mRepeatCount:I

.field private mRepeatMode:Ljava/lang/String;

.field mSeekFraction:F

.field private mStarted:Z

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;-><init>()V

    .line 33
    iput v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatCount:I

    const-string/jumbo v0, "restart"

    .line 40
    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatMode:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mCurrentIteration:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 54
    iput v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mSeekFraction:F

    .line 58
    return-void
.end method

.method private attachToRoot()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->rootTimeline:Lcom/meizu/flyme/activeview/moveline/RootTimeline;

    iget-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->add(Lcom/meizu/flyme/activeview/moveline/Animation;JI)V

    .line 275
    return-void
.end method

.method private detachFromRoot()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->rootTimeline:Lcom/meizu/flyme/activeview/moveline/RootTimeline;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/activeview/moveline/RootTimeline;->remove(Lcom/meizu/flyme/activeview/moveline/Animation;)Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    .line 279
    return-void
.end method

.method private jumpToEnd()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 337
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mReversing:Z

    if-eqz v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->last:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 349
    .local v0, "animation":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_0
    if-nez v0, :cond_3

    .line 358
    :cond_0
    return-void

    .line 338
    .end local v0    # "animation":Lcom/meizu/flyme/activeview/moveline/Animation;
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 339
    .restart local v0    # "animation":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_1
    if-eqz v0, :cond_0

    .line 340
    iget-boolean v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->mReversing:Z

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v0, v4, v5}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    .line 345
    :goto_2
    iget-object v0, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    goto :goto_2

    .line 350
    :cond_3
    iget-boolean v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->mReversing:Z

    if-eqz v1, :cond_4

    .line 353
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    .line 355
    :goto_3
    iget-object v0, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_0

    .line 351
    :cond_4
    invoke-virtual {v0, v4, v5}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    goto :goto_3
.end method

.method private start(Z)V
    .locals 8
    .param p1, "playBackwards"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingBackwards:Z

    .line 213
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mReversing:Z

    .line 214
    sget-object v2, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    :goto_0
    iget v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getDuration()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mSeekFraction:F

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 223
    .local v0, "seekTime":J
    sget-object v2, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    .line 226
    .end local v0    # "seekTime":J
    :goto_1
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->attachToRoot()V

    .line 237
    iput-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mStarted:Z

    .line 238
    iput-boolean v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->paused:Z

    .line 239
    iget v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    if-ne v2, v7, :cond_2

    .line 245
    :goto_2
    return-void

    .line 215
    :cond_0
    sget-object v2, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->wake()V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 219
    invoke-virtual {p0, v2, v3}, Lcom/meizu/flyme/activeview/moveline/Timeline;->setCurrentPlayTime(J)V

    .line 220
    iget-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    iget-wide v4, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->delayTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->notifyStartListeners()V

    goto :goto_2
.end method

.method private updateChild(J)V
    .locals 9
    .param p1, "curTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 125
    .local v0, "animation":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_0
    if-nez v0, :cond_0

    .line 136
    return-void

    .line 126
    :cond_0
    iget-boolean v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->isActive:Z

    if-eqz v1, :cond_2

    .line 127
    :goto_1
    iget-boolean v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->mReversing:Z

    if-eqz v1, :cond_4

    .line 130
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->getDuration()I

    move-result v1

    int-to-long v4, v1

    iget-wide v6, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    sub-long v6, p1, v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    .line 134
    :cond_1
    :goto_2
    iget-object v0, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_0

    .line 126
    :cond_2
    iget-wide v4, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    cmp-long v1, v4, p1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_3

    .line 128
    :cond_4
    iget-wide v4, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    sub-long v4, p1, v4

    invoke-virtual {v0, v4, v5}, Lcom/meizu/flyme/activeview/moveline/Animation;->update(J)V

    goto :goto_2
.end method


# virtual methods
.method public getDuration()I
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 293
    iget-boolean v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->dirty:Z

    if-nez v6, :cond_0

    .line 307
    :goto_0
    invoke-super {p0}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->getDuration()I

    move-result v6

    return v6

    :cond_0
    const-wide/16 v4, 0x0

    .line 295
    .local v4, "max":J
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->last:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 296
    .local v0, "animation":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_1
    if-nez v0, :cond_1

    .line 304
    long-to-int v6, v4

    iput v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->duration:I

    .line 305
    iput-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->dirty:Z

    goto :goto_0

    .line 297
    :cond_1
    iget-object v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 298
    .local v1, "prev":Lcom/meizu/flyme/activeview/moveline/Animation;
    iget-wide v8, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->getDuration()I

    move-result v6

    int-to-long v10, v6

    add-long v2, v8, v10

    .line 299
    .local v2, "end":J
    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_2

    .line 300
    move-wide v4, v2

    .line 302
    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move v6, v7

    .line 299
    goto :goto_2
.end method

.method protected initAnimationValue()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->last:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 415
    .local v0, "tween":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_0
    if-nez v0, :cond_0

    .line 419
    return-void

    .line 416
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Animation;->initAnimationValue()V

    .line 417
    iget-object v0, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 249
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->paused:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mStarted:Z

    if-eqz v0, :cond_0

    .line 250
    iget v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    if-ne v0, v6, :cond_2

    .line 253
    :goto_0
    iget-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    iput-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->pauseTime:J

    .line 254
    iput-boolean v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->paused:Z

    .line 255
    return-void

    .line 251
    :cond_2
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    iget-wide v4, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->delayTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    goto :goto_0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->start(Z)V

    .line 185
    return-void
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 260
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->paused:Z

    if-eqz v1, :cond_1

    .line 261
    sget-object v1, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    :goto_0
    iget v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    if-ne v1, v0, :cond_3

    .line 268
    :cond_0
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getTime()J

    move-result-wide v4

    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mReversing:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iget-wide v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->pauseTime:J

    sub-long/2addr v0, v6

    :goto_1
    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    .line 270
    :goto_2
    iput-boolean v2, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->paused:Z

    .line 271
    return-void

    .line 260
    :cond_1
    return-void

    .line 262
    :cond_2
    sget-object v1, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->wake()V

    goto :goto_0

    .line 264
    :cond_3
    iget-wide v4, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->pauseTime:J

    iget-wide v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->delayTime:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    :goto_3
    if-nez v0, :cond_0

    .line 265
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->delayTime:J

    iget-wide v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->pauseTime:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    goto :goto_2

    :cond_4
    move v0, v2

    .line 264
    goto :goto_3

    .line 268
    :cond_5
    iget-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->pauseTime:J

    goto :goto_1
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->start(Z)V

    .line 190
    return-void
.end method

.method protected setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->setActive(Z)V

    .line 284
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 285
    .local v0, "tween":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_0
    if-nez v0, :cond_0

    .line 289
    return-void

    .line 286
    :cond_0
    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/moveline/Animation;->setActive(Z)V

    .line 287
    iget-object v0, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_0
.end method

.method public setCurrentFraction(F)V
    .locals 8
    .param p1, "fraction"    # F

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 378
    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 381
    :cond_0
    float-to-int v0, p1

    .line 382
    .local v0, "iteration":I
    cmpl-float v1, p1, v7

    if-nez v1, :cond_1

    .line 383
    add-int/lit8 v0, v0, -0x1

    .line 397
    :goto_0
    iput v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mCurrentIteration:I

    .line 398
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getDuration()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-long v2, v1

    .line 399
    .local v2, "seekTime":J
    sget-object v1, Lcom/meizu/flyme/activeview/moveline/Timeline;->timelineTicker:Lcom/meizu/flyme/activeview/moveline/TimelineTicker;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    .line 400
    iget v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    if-ne v1, v5, :cond_7

    .line 404
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingBackwards:Z

    if-nez v1, :cond_8

    .line 407
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->initAnimationValue()V

    .line 408
    invoke-virtual {p0, v4}, Lcom/meizu/flyme/activeview/moveline/Timeline;->setActive(Z)V

    .line 409
    invoke-direct {p0, v2, v3}, Lcom/meizu/flyme/activeview/moveline/Timeline;->updateChild(J)V

    .line 410
    return-void

    .line 384
    .end local v2    # "seekTime":J
    :cond_1
    cmpl-float v1, p1, v7

    if-lez v1, :cond_6

    .line 385
    iget v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatMode:Ljava/lang/String;

    const-string/jumbo v6, "reverse"

    if-eq v1, v6, :cond_4

    .line 389
    :goto_3
    rem-float/2addr p1, v7

    goto :goto_0

    .line 385
    :cond_3
    iget v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatCount:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 392
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 387
    :cond_4
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_5

    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingBackwards:Z

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4

    .line 395
    :cond_6
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mReversing:Z

    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingBackwards:Z

    goto :goto_0

    .line 401
    .restart local v2    # "seekTime":J
    :cond_7
    iput p1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mSeekFraction:F

    const/4 v1, 0x2

    .line 402
    iput v1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    goto :goto_1

    .line 405
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getDuration()I

    move-result v1

    int-to-long v6, v1

    sub-long v2, v6, v2

    goto :goto_2
.end method

.method public setCurrentPlayTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getDuration()I

    move-result v1

    .line 368
    .local v1, "totalDuration":I
    if-gtz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 369
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->setCurrentFraction(F)V

    .line 370
    return-void

    .line 368
    .end local v0    # "fraction":F
    :cond_0
    long-to-float v2, p1

    int-to-float v3, v1

    div-float v0, v2, v3

    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatCount:I

    .line 320
    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatMode"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatMode:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->detachFromRoot()V

    .line 199
    iget-boolean v3, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mReversing:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getDuration()I

    move-result v3

    int-to-long v0, v3

    .line 201
    .local v0, "destTime":J
    :goto_0
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->jumpToEnd()V

    .line 203
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getAnimationListener()Lcom/meizu/flyme/activeview/moveline/AnimationListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 208
    :goto_1
    iput-boolean v4, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mStarted:Z

    .line 209
    return-void

    .end local v0    # "destTime":J
    :cond_0
    const-wide/16 v0, 0x0

    .line 199
    goto :goto_0

    .line 204
    .restart local v0    # "destTime":J
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getAnimationListener()Lcom/meizu/flyme/activeview/moveline/AnimationListener;

    move-result-object v2

    .line 205
    .local v2, "listener":Lcom/meizu/flyme/activeview/moveline/AnimationListener;
    invoke-interface {v2, p0}, Lcom/meizu/flyme/activeview/moveline/AnimationListener;->onAnimationStopped(Lcom/meizu/flyme/activeview/moveline/Animation;)V

    goto :goto_1
.end method

.method public to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;I)Lcom/meizu/flyme/activeview/moveline/Timeline;
    .locals 6
    .param p1, "target"    # Lcom/meizu/flyme/activeview/moveline/item/TweenItem;
    .param p2, "duration"    # I
    .param p3, "itemStyle"    # Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
    .param p4, "delay"    # I

    .prologue
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/flyme/activeview/moveline/Timeline;->to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;II)Lcom/meizu/flyme/activeview/moveline/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;II)Lcom/meizu/flyme/activeview/moveline/Timeline;
    .locals 7
    .param p1, "target"    # Lcom/meizu/flyme/activeview/moveline/item/TweenItem;
    .param p2, "duration"    # I
    .param p3, "itemStyle"    # Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
    .param p4, "position"    # I
    .param p5, "delay"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 161
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/flyme/activeview/moveline/Timeline;->to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;Landroid/view/animation/Interpolator;II)Lcom/meizu/flyme/activeview/moveline/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;Landroid/view/animation/Interpolator;II)Lcom/meizu/flyme/activeview/moveline/Timeline;
    .locals 4
    .param p1, "target"    # Lcom/meizu/flyme/activeview/moveline/item/TweenItem;
    .param p2, "duration"    # I
    .param p3, "itemStyle"    # Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "position"    # I
    .param p6, "delay"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/Tween;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/flyme/activeview/moveline/Tween;-><init>(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;)V

    .line 176
    .local v0, "tween":Lcom/meizu/flyme/activeview/moveline/Tween;
    invoke-virtual {v0, p4}, Lcom/meizu/flyme/activeview/moveline/Tween;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 177
    int-to-long v2, p5

    invoke-virtual {p0, v0, v2, v3, p6}, Lcom/meizu/flyme/activeview/moveline/Timeline;->add(Lcom/meizu/flyme/activeview/moveline/Animation;JI)V

    .line 178
    return-object p0
.end method

.method protected update(J)V
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, "isComplete":Z
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getDuration()I

    move-result v6

    .line 67
    .local v6, "totalDuration":I
    if-lez v6, :cond_2

    .line 70
    iget-wide v4, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    .line 71
    .local v4, "prevTime":J
    int-to-long v8, v6

    cmp-long v7, p1, v8

    if-gez v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    if-nez v7, :cond_7

    .line 72
    int-to-long v8, v6

    iput-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    .line 73
    iget v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mCurrentIteration:I

    iget v8, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatCount:I

    if-ge v7, v8, :cond_4

    .line 74
    :cond_0
    iget-object v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatMode:Ljava/lang/String;

    const-string/jumbo v8, "reverse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 78
    :goto_1
    iget-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->startTime:J

    .line 79
    iget v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mCurrentIteration:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mCurrentIteration:I

    .line 92
    :cond_1
    :goto_2
    iget-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    cmp-long v7, v4, v8

    if-nez v7, :cond_a

    .line 93
    return-void

    .line 68
    .end local v4    # "prevTime":J
    :cond_2
    const/4 v2, 0x1

    .line 106
    :goto_3
    if-nez v2, :cond_d

    .line 120
    :goto_4
    return-void

    .line 71
    .restart local v4    # "prevTime":J
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 73
    :cond_4
    iget v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mRepeatCount:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 80
    iget-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mReversing:Z

    if-nez v7, :cond_1

    .line 81
    const/4 v2, 0x1

    goto :goto_2

    .line 75
    :cond_5
    iget-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingBackwards:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_5
    iput-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingBackwards:Z

    const-wide/16 v8, 0x0

    .line 76
    iput-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    goto :goto_1

    :cond_6
    const/4 v7, 0x1

    .line 75
    goto :goto_5

    :cond_7
    const-wide/16 v8, 0x0

    .line 83
    cmp-long v7, p1, v8

    if-ltz v7, :cond_8

    const/4 v7, 0x1

    :goto_6
    if-nez v7, :cond_9

    const-wide/16 v8, 0x0

    .line 85
    iput-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    .line 86
    iget-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mReversing:Z

    if-eqz v7, :cond_1

    .line 87
    const/4 v2, 0x1

    goto :goto_2

    .line 83
    :cond_8
    const/4 v7, 0x0

    goto :goto_6

    .line 90
    :cond_9
    iput-wide p1, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    goto :goto_2

    .line 95
    :cond_a
    iget-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->isActive:Z

    if-eqz v7, :cond_b

    .line 98
    :goto_7
    iget-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->time:J

    .line 99
    .local v0, "curTime":J
    iget-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingBackwards:Z

    if-nez v7, :cond_c

    .line 102
    :goto_8
    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/activeview/moveline/Timeline;->updateChild(J)V

    const/4 v7, 0x1

    .line 103
    iput v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    goto :goto_3

    .line 96
    .end local v0    # "curTime":J
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->isActive:Z

    goto :goto_7

    .line 100
    .restart local v0    # "curTime":J
    :cond_c
    int-to-long v8, v6

    sub-long v0, v8, v0

    goto :goto_8

    .line 110
    .end local v0    # "curTime":J
    .end local v4    # "prevTime":J
    :cond_d
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->detachFromRoot()V

    .line 111
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->isActive:Z

    .line 112
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mStarted:Z

    const/4 v7, 0x0

    .line 113
    iput v7, p0, Lcom/meizu/flyme/activeview/moveline/Timeline;->mPlayingState:I

    .line 114
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getAnimationListener()Lcom/meizu/flyme/activeview/moveline/AnimationListener;

    move-result-object v7

    if-nez v7, :cond_e

    .line 118
    :goto_9
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->notifyEndListeners()V

    goto :goto_4

    .line 115
    :cond_e
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->getAnimationListener()Lcom/meizu/flyme/activeview/moveline/AnimationListener;

    move-result-object v3

    .line 116
    .local v3, "listener":Lcom/meizu/flyme/activeview/moveline/AnimationListener;
    invoke-interface {v3, p0}, Lcom/meizu/flyme/activeview/moveline/AnimationListener;->onAnimationEnd(Lcom/meizu/flyme/activeview/moveline/Animation;)V

    goto :goto_9
.end method
