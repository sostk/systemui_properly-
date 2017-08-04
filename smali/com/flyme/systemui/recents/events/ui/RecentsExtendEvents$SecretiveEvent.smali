.class public Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;
.super Ljava/lang/Object;
.source "RecentsExtendEvents.java"


# instance fields
.field public final mSecretive:Z

.field public final mTaskView:Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/views/TaskView;Z)V
    .locals 0
    .param p1, "mTaskView"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "mSecretive"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    .line 24
    iput-boolean p2, p0, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$SecretiveEvent;->mSecretive:Z

    .line 22
    return-void
.end method
