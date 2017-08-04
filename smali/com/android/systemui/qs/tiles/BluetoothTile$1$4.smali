.class Lcom/android/systemui/qs/tiles/BluetoothTile$1$4;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile$1;->onBluetoothDiscoveryFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$4;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "onBluetoothDiscoveryFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$4;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$4;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setEmptyState(Z)V

    .line 242
    :cond_1
    return-void
.end method
