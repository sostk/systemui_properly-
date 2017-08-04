.class final Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V
    .locals 2
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 309
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput v1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 311
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput v1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 312
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean v1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 319
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get3(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->setMobileDataEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public onMobileDataModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-set1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;I)I

    .line 326
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/MobileDataTile;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileDataModeDesc:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get3(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->setMobileDataMode(I)V

    .line 328
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
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
    .line 276
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput p4, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 277
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityIn:Z

    .line 278
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p6, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityOut:Z

    .line 279
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    if-eq v0, p2, :cond_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    .line 281
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput p2, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 282
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-object p8, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 284
    const-string/jumbo v0, "MobileDataTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMobileDataSignalChanged mInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 275
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-object v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v0, p8}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 4
    .param p1, "noSims"    # Z

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    .line 292
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput v3, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 295
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput v3, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 296
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean v3, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    .line 299
    const-string/jumbo v0, "MobileDataTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNoSimVisibleChanged noSim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->showDetail(Z)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2
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
    .line 262
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->wifiEnabled:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->wifiConnected:Z

    if-eq v0, p2, :cond_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->wifiEnabled:Z

    .line 264
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p2, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->wifiConnected:Z

    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 261
    :cond_1
    return-void
.end method
