.class public Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;
.super Ljava/lang/Object;
.source "RecentsEvents.java"


# instance fields
.field public isIgnore:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1, "isIgnore"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "recents.Events"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IgnoreTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput-boolean p1, p0, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;->isIgnore:Z

    .line 14
    return-void
.end method
