.class public Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;
.super Ljava/lang/Object;
.source "FrameRateCounter.java"


# instance fields
.field private mLastTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeStep()F
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 12
    .local v0, "time":J
    iget-wide v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;->mLastTime:J

    sub-long v2, v0, v6

    .line 13
    .local v2, "timeDelta":J
    iget-wide v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;->mLastTime:J

    long-to-float v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_0

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v4, v5, v6

    .line 14
    .local v4, "timeDeltaSeconds":F
    :cond_0
    iput-wide v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/utils/FrameRateCounter;->mLastTime:J

    const v5, 0x3cac0831    # 0.021f

    .line 15
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5
.end method
