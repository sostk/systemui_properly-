.class Lcom/flyme/systemui/recents/RecentsWindow$12$1;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/RecentsWindow$12;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow$12;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/RecentsWindow$12;
    .param p2, "val$callback"    # Ljava/lang/Runnable;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$12$1;->this$1:Lcom/flyme/systemui/recents/RecentsWindow$12;

    iput-object p2, p0, Lcom/flyme/systemui/recents/RecentsWindow$12$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$12$1;->this$1:Lcom/flyme/systemui/recents/RecentsWindow$12;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsWindow$12;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onStop()V

    .line 756
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$12$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$12$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 754
    :cond_0
    return-void
.end method
