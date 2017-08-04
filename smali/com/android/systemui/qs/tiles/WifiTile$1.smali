.class Lcom/android/systemui/qs/tiles/WifiTile$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 317
    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 360
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isDataTypeIconWide"    # Z

    .prologue
    .line 351
    return-void
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 0
    .param p1, "noSims"    # Z

    .prologue
    .line 355
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "wifiSignalIconId"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "enabling"    # Z
    .param p9, "disabling"    # Z
    .param p10, "connecting"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    if-eq v0, p2, :cond_2

    .line 330
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput p3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-object p7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-object p6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabling:Z

    .line 337
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connecting:Z

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1, p9}, Lcom/android/systemui/qs/tiles/WifiTile;->-set1(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->disabling:Z

    .line 339
    const-string/jumbo v0, "WifiTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiSignalChanged mInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->-wrap0(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    .line 323
    :cond_1
    return-void

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-ne v0, p3, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v0, p7}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    invoke-static {v0, p6}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabling:Z

    if-ne v0, p8, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connecting:Z

    if-ne v0, p10, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->disabling:Z

    if-eq v0, p9, :cond_1

    goto :goto_0
.end method
