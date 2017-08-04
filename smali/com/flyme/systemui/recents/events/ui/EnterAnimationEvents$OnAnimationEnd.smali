.class public Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;
.super Ljava/lang/Object;
.source "EnterAnimationEvents.java"


# instance fields
.field public final mEnter:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;->mEnter:Z

    .line 18
    return-void
.end method
