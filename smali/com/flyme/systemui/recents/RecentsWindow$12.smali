.class Lcom/flyme/systemui/recents/RecentsWindow$12;
.super Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
.source "RecentsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow;->onAlphaToExitWindowWaitActivityResume(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsWindow;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsWindow;
    .param p2, "val$callback"    # Ljava/lang/Runnable;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$12;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    iput-object p2, p0, Lcom/flyme/systemui/recents/RecentsWindow$12;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 749
    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setImageCache(Landroid/graphics/Bitmap;)V

    .line 750
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$12;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->-get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$12;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->-get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$12$1;

    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow$12;->val$callback:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/recents/RecentsWindow$12$1;-><init>(Lcom/flyme/systemui/recents/RecentsWindow$12;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 748
    :cond_0
    return-void
.end method
