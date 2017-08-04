.class Lcom/flyme/systemui/recents/views/RecentsView$9$1$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/flyme/systemui/recents/views/RecentsView$9$1;

.field final synthetic val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView$9$1;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$2"    # Lcom/flyme/systemui/recents/views/RecentsView$9$1;
    .param p2, "val$completedTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1$1;->this$2:Lcom/flyme/systemui/recents/views/RecentsView$9$1;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1$1;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 909
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1$1;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 911
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
