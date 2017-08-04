.class Lcom/flyme/systemui/recents/views/RecentsView$9;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView;->onClearAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/RecentsView;

.field final synthetic val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

.field final synthetic val$targetID:[I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;[ILcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;
    .param p2, "val$targetID"    # [I
    .param p3, "val$completedTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$9;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$9;->val$targetID:[I

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/RecentsView$9;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 899
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$9;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->-get2(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 901
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$9;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->-get2(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/views/RecentsView$9$1;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/RecentsView$9;->val$targetID:[I

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsView$9;->val$completedTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v1, p0, v2, v3}, Lcom/flyme/systemui/recents/views/RecentsView$9$1;-><init>(Lcom/flyme/systemui/recents/views/RecentsView$9;[ILcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    return-void
.end method
