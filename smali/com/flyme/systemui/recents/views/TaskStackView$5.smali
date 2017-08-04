.class Lcom/flyme/systemui/recents/views/TaskStackView$5;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;->startDismissCardAnimaiton(Landroid/view/View;FLcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

.field final synthetic val$cardRemoveTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;Landroid/view/View;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p2, "val$v"    # Landroid/view/View;
    .param p3, "val$cardRemoveTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$5;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$5;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/TaskStackView$5;->val$cardRemoveTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$5;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$5;->val$cardRemoveTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 762
    return-void
.end method
