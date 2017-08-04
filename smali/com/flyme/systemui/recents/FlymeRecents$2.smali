.class Lcom/flyme/systemui/recents/FlymeRecents$2;
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
    .line 258
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$2;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$2;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsTestPresenter:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_2_COMPLETE:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->testCase(Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;)V

    .line 260
    return-void
.end method
