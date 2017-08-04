.class public abstract Lcom/meizu/flyme/activeview/moveline/BaseTimeline;
.super Lcom/meizu/flyme/activeview/moveline/Animation;
.source "BaseTimeline.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected first:Lcom/meizu/flyme/activeview/moveline/Animation;

.field protected last:Lcom/meizu/flyme/activeview/moveline/Animation;

.field private mStarted:Z

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/Animation;-><init>()V

    .line 17
    return-void
.end method

.method private calcPosition(JI)J
    .locals 5
    .param p1, "position"    # J
    .param p3, "delay"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    .line 54
    int-to-long v2, p3

    add-long/2addr v2, p1

    return-wide v2

    .line 53
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->getDuration()I

    move-result v2

    int-to-long v0, v2

    .line 58
    .local v0, "duration":J
    int-to-long v2, p3

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method protected add(Lcom/meizu/flyme/activeview/moveline/Animation;)V
    .locals 2
    .param p1, "child"    # Lcom/meizu/flyme/activeview/moveline/Animation;

    .prologue
    .line 20
    iget-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->timeline:Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    if-nez v1, :cond_0

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->last:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 25
    .local v0, "prevAnim":Lcom/meizu/flyme/activeview/moveline/Animation;
    if-nez v0, :cond_1

    .line 29
    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 30
    iput-object p1, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 32
    :goto_1
    iget-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    if-nez v1, :cond_2

    .line 35
    iput-object p1, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->last:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 37
    :goto_2
    iput-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 38
    iput-object p0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->timeline:Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->dirty:Z

    .line 40
    return-void

    .line 21
    .end local v0    # "prevAnim":Lcom/meizu/flyme/activeview/moveline/Animation;
    :cond_0
    iget-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->timeline:Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    invoke-virtual {v1, p1}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->remove(Lcom/meizu/flyme/activeview/moveline/Animation;)Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    goto :goto_0

    .line 26
    .restart local v0    # "prevAnim":Lcom/meizu/flyme/activeview/moveline/Animation;
    :cond_1
    iget-object v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 27
    iput-object p1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_1

    .line 33
    :cond_2
    iget-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object p1, v1, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_2
.end method

.method public add(Lcom/meizu/flyme/activeview/moveline/Animation;I)V
    .locals 2
    .param p1, "child"    # Lcom/meizu/flyme/activeview/moveline/Animation;
    .param p2, "delay"    # I

    .prologue
    const-wide/16 v0, -0x1

    .line 43
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->add(Lcom/meizu/flyme/activeview/moveline/Animation;JI)V

    .line 44
    return-void
.end method

.method public add(Lcom/meizu/flyme/activeview/moveline/Animation;JI)V
    .locals 0
    .param p1, "child"    # Lcom/meizu/flyme/activeview/moveline/Animation;
    .param p2, "position"    # J
    .param p4, "delay"    # I

    .prologue
    .line 47
    invoke-direct {p0, p2, p3, p4}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->calcPosition(JI)J

    move-result-wide p2

    .line 48
    iput-wide p2, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->startTime:J

    .line 49
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->add(Lcom/meizu/flyme/activeview/moveline/Animation;)V

    .line 50
    return-void
.end method

.method protected initAnimationValue()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public remove(Lcom/meizu/flyme/activeview/moveline/Animation;)Lcom/meizu/flyme/activeview/moveline/BaseTimeline;
    .locals 3
    .param p1, "child"    # Lcom/meizu/flyme/activeview/moveline/Animation;

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->timeline:Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    if-eq v0, p0, :cond_0

    .line 78
    :goto_0
    return-object p0

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    if-eq v0, p1, :cond_2

    .line 69
    :goto_1
    iget-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->last:Lcom/meizu/flyme/activeview/moveline/Animation;

    if-eq v0, p1, :cond_4

    .line 75
    :goto_2
    iput-object v2, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->timeline:Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    iput-object v2, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object v2, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    iget-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_1

    .line 70
    :cond_3
    iget-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    iget-object v1, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object v1, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_2

    .line 72
    :cond_4
    iget-object v0, p1, Lcom/meizu/flyme/activeview/moveline/Animation;->prev:Lcom/meizu/flyme/activeview/moveline/Animation;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->last:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_2
.end method

.method protected setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/meizu/flyme/activeview/moveline/Animation;->setActive(Z)V

    .line 84
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->first:Lcom/meizu/flyme/activeview/moveline/Animation;

    .line 85
    .local v0, "tween":Lcom/meizu/flyme/activeview/moveline/Animation;
    :goto_0
    if-nez v0, :cond_0

    .line 89
    return-void

    .line 86
    :cond_0
    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/moveline/Animation;->setActive(Z)V

    .line 87
    iget-object v0, v0, Lcom/meizu/flyme/activeview/moveline/Animation;->next:Lcom/meizu/flyme/activeview/moveline/Animation;

    goto :goto_0
.end method
