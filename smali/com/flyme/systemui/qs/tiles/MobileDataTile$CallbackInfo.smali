.class final Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;
.super Ljava/lang/Object;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public airplaneModeEnabled:Z

.field public dataTypeIconId:I

.field public enabled:Z

.field public enabledDesc:Ljava/lang/String;

.field public mobileDataModeDesc:Ljava/lang/String;

.field public mobileSignalIconId:I

.field public noSim:Z

.field public wifiConnected:Z

.field public wifiEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CallbackInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v1, "enabled="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ",wifiEnabled="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->wifiEnabled:Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    const-string/jumbo v1, ",wifiConnected="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->wifiConnected:Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    const-string/jumbo v1, ",airplaneModeEnabled="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ",mobileSignalIconId="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, ",dataTypeIconId="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const-string/jumbo v1, ",activityIn="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityIn:Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string/jumbo v1, ",activityOut="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityOut:Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string/jumbo v1, ",enabledDesc="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, ",noSim="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, ",mobileDataModeDesc="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileDataModeDesc:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    const/16 v1, 0x5d

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
