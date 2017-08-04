.class Lcom/flyme/systemui/recents/views/TaskStackView$7;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;->startLockedCardAnimaiton(Landroid/view/View;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

.field final synthetic val$cardRemoveTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p2, "val$cardRemoveTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$7;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$7;->val$cardRemoveTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$7;->val$cardRemoveTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 797
    return-void
.end method
