.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "AirplaneModeTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-set0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-set1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    .line 187
    const-string/jumbo v0, "AirplaneModeTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAirplaneMode: intent state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 181
    :cond_0
    return-void
.end method
