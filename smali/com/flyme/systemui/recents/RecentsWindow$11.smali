.class Lcom/flyme/systemui/recents/RecentsWindow$11;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow;->onAlphaToExitWindow(Ljava/lang/Runnable;)V
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
    .line 724
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$11;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    iput-object p2, p0, Lcom/flyme/systemui/recents/RecentsWindow$11;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$11;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onStop()V

    .line 728
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$11;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$11;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 726
    :cond_0
    return-void
.end method
