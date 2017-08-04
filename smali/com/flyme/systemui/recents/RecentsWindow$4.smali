.class Lcom/flyme/systemui/recents/RecentsWindow$4;
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
    .line 600
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$4;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 604
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$4;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v1}, Lcom/flyme/systemui/recents/RecentsWindow;->-get1(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v1

    .line 608
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow$4;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v2}, Lcom/flyme/systemui/recents/RecentsWindow;->-get1(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    .line 609
    const v3, 0x7f05007f

    .line 610
    const v4, 0x7f050080

    .line 607
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 611
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 607
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 602
    return-void
.end method
