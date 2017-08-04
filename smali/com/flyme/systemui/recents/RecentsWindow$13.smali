.class Lcom/flyme/systemui/recents/RecentsWindow$13;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow;->onAlphaToExitWindowWithAnimation()V
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
    .line 773
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$13;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$13;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onStop()V

    .line 775
    return-void
.end method
