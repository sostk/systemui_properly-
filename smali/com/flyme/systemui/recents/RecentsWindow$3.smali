.class Lcom/flyme/systemui/recents/RecentsWindow$3;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/RecentsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsWindow;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$3;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$3;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->computeRealPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$3;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->-get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$3;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->-get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$3;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsWindow;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$3;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$3;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/RecentsWindow;->-wrap0(Lcom/flyme/systemui/recents/RecentsWindow;F)V

    .line 348
    return-void
.end method
