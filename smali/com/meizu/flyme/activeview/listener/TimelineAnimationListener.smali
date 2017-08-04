.class public Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;
.super Ljava/lang/Object;
.source "TimelineAnimationListener.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/moveline/AnimationListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimelineAnimationListener"


# instance fields
.field private mActiveView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/flyme/activeview/views/ActiveView;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveView;Lcom/meizu/flyme/activeview/moveline/Timeline;)V
    .locals 1
    .param p1, "bv"    # Lcom/meizu/flyme/activeview/views/ActiveView;
    .param p2, "timeline"    # Lcom/meizu/flyme/activeview/moveline/Timeline;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;->mActiveView:Ljava/lang/ref/WeakReference;

    .line 22
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/meizu/flyme/activeview/moveline/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/meizu/flyme/activeview/moveline/Animation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    if-nez v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;->mActiveView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;->mActiveView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;->mActiveView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/activeview/views/ActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TimelineAnimationListener"

    const-string/jumbo v1, "Replay the animation."

    .line 29
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/meizu/flyme/activeview/listener/TimelineAnimationListener;->mActiveView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/activeview/views/ActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->startAnimation()V

    goto :goto_0
.end method

.method public onAnimationStart(Lcom/meizu/flyme/activeview/moveline/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/meizu/flyme/activeview/moveline/Animation;

    .prologue
    .line 42
    return-void
.end method

.method public onAnimationStopped(Lcom/meizu/flyme/activeview/moveline/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/meizu/flyme/activeview/moveline/Animation;

    .prologue
    .line 37
    return-void
.end method
