.class public Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;
.super Ljava/lang/Object;
.source "ViewAnimation.java"


# instance fields
.field offscreenTranslationY:I

.field postAnimationTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "t"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .line 61
    return-void
.end method
