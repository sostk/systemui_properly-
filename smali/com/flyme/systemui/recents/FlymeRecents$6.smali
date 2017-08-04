.class Lcom/flyme/systemui/recents/FlymeRecents$6;
.super Landroid/content/BroadcastReceiver;
.source "FlymeRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/FlymeRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$6;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$6;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangePresenter:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onCancelGlobalOrScreenOff()V

    .line 1097
    return-void
.end method
