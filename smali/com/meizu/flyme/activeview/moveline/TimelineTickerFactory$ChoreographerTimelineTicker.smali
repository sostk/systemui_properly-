.class Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;
.super Lcom/meizu/flyme/activeview/moveline/TimelineTicker;
.source "TimelineTickerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChoreographerTimelineTicker"
.end annotation


# instance fields
.field private mActive:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFrame:I

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mLastTime:J

.field private mStartTime:J

.field private mTime:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 4
    .param p1, "instance"    # Landroid/view/Choreographer;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mChoreographer:Landroid/view/Choreographer;

    .line 28
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;-><init>(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mStartTime:J

    .line 45
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mActive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;J)J
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;J)J
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$408(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    .prologue
    .line 16
    iget v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrame:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->dispatchUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method public static create()Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method

.method private dispatchUpdate()V
    .locals 4

    .prologue
    .line 52
    iget-object v2, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mListeners:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    return-void

    .line 53
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/activeview/moveline/TimelineTicker$TimelineTickerListener;

    .line 54
    .local v1, "listener":Lcom/meizu/flyme/activeview/moveline/TimelineTicker$TimelineTickerListener;
    iget-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mTime:J

    invoke-interface {v1, v2, v3}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker$TimelineTickerListener;->onUpdate(J)V

    goto :goto_0
.end method


# virtual methods
.method public getFrame()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrame:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mTime:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mActive:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mActive:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mActive:Z

    .line 68
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 69
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    .line 70
    return-void

    .line 65
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mActive:Z

    .line 75
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 76
    return-void
.end method

.method public wake()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->start()V

    .line 91
    return-void
.end method
