.class Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;
.super Ljava/lang/Object;
.source "RecentsEmptyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsEmptyActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;->this$0:Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->-get0(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/RecentsEmptyActivity$3$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$3$1;-><init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method
