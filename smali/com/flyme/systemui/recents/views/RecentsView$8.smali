.class Lcom/flyme/systemui/recents/views/RecentsView$8;
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


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$8;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$8;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->-get1(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$8;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->-get1(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/RecentsView$8;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v1, v1, Lcom/flyme/systemui/recents/views/RecentsView;->mClearAllFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 867
    return-void
.end method
