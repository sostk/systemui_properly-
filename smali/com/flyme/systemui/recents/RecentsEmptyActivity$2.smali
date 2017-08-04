.class final Lcom/flyme/systemui/recents/RecentsEmptyActivity$2;
.super Ljava/lang/Object;
.source "RecentsEmptyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsEmptyActivity;->registerResumeListener(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;)V
    .locals 0
    .param p1, "val$r"    # Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$2;->val$r:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$2;->val$r:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->isCancel:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$2;->val$r:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->run()V

    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$2;->val$r:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->isCancel:Z

    .line 61
    :cond_0
    return-void
.end method
