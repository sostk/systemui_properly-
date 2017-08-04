.class Lcom/flyme/systemui/recents/views/RecentsView$9$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/views/RecentsView$9;

.field final synthetic val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

.field final synthetic val$targetID:[I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView$9;[ILcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/views/RecentsView$9;
    .param p2, "val$targetID"    # [I
    .param p3, "val$completedTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$9;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1;->val$targetID:[I

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 906
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$9;

    iget-object v1, v1, Lcom/flyme/systemui/recents/views/RecentsView$9;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/flyme/systemui/recents/views/RecentsView;->-get0(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/recents/views/RecentsView$9$1$1;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3}, Lcom/flyme/systemui/recents/views/RecentsView$9$1$1;-><init>(Lcom/flyme/systemui/recents/views/RecentsView$9$1;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 917
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1;->val$targetID:[I

    .line 906
    invoke-virtual {v0, v1, v2, v3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killAllTasks(Landroid/content/Context;Ljava/lang/Runnable;[I)V

    .line 937
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$9$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$9;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/RecentsView$9;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->-get0(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearAll(Landroid/content/Context;)V

    .line 905
    return-void
.end method
