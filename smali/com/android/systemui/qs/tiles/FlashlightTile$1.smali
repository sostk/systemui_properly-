.class Lcom/android/systemui/qs/tiles/FlashlightTile$1;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/FlashlightTile;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get0(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "clickFlashLight() -- flash disabled, so return..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09009f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showAlert(Ljava/lang/String;Z)V

    .line 153
    return-void

    .line 157
    :cond_0
    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "reason":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    .line 159
    .local v0, "enabled":Z
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get0(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,mIsFlashLightOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v1, :cond_2

    const-string/jumbo v5, "gesture"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 149
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 161
    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 166
    .local v2, "state":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto :goto_1
.end method
