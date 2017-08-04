.class final Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDetailAdapter"
.end annotation


# instance fields
.field private mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

.field private mConnected:Z

.field private mConnecting:Z

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-void
.end method

.method private getRightIconId(I)I
    .locals 1
    .param p1, "softApType"    # I

    .prologue
    .line 534
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 535
    :cond_0
    const v0, 0x7f02011f

    return v0

    .line 537
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateItems()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 460
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v4, :cond_0

    return-void

    .line 461
    :cond_0
    const/4 v3, 0x0

    .line 462
    .local v3, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    if-eqz v4, :cond_5

    .line 463
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    array-length v4, v4

    new-array v3, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 464
    .local v3, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 465
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    aget-object v0, v4, v1

    .line 466
    .local v0, "ap":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;
    new-instance v2, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v2}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 467
    .local v2, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    iput-object v0, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 468
    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->iconId:I

    iput v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 469
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 470
    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->softApType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getRightIconId(I)I

    move-result v4

    iput v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->rightIcon:I

    .line 471
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-eqz v4, :cond_3

    .line 473
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnected:Z

    if-eqz v4, :cond_2

    .line 477
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 485
    :cond_1
    :goto_1
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v4, :cond_4

    .line 486
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->-get1(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0204de

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 485
    :goto_2
    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 488
    aput-object v2, v3, v1

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnecting:Z

    if-eqz v4, :cond_1

    .line 479
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->-get1(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f09009b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    goto :goto_1

    .line 482
    :cond_3
    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_4
    move-object v4, v5

    .line 487
    goto :goto_2

    .line 491
    .end local v0    # "ap":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .end local v3    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 459
    return-void
.end method


# virtual methods
.method public cleanupDetailView()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 529
    return-void
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 404
    const-string/jumbo v2, "WifiTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createDetailView convertView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get3(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->scanForAccessPoints()V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    .line 408
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 409
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v2, "Wifi"

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V
    .locals 2
    .param p1, "accessPoints"    # [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .prologue
    const/4 v1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 422
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    .line 419
    :cond_0
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 521
    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .line 436
    .local v0, "ap":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-nez v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->-get3(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->-get2(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 441
    :cond_2
    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v1, :cond_4

    .line 446
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    .line 433
    return-void

    .line 442
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->-set0(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z

    goto :goto_0
.end method

.method public onMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 525
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
    .line 513
    return-void
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 517
    return-void
.end method

.method public onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 1
    .param p1, "settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get2(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 428
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1
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
    .line 500
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnecting:Z

    if-ne v0, p10, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnected:Z

    if-eq v0, p2, :cond_1

    .line 501
    :cond_0
    iput-boolean p10, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnecting:Z

    .line 502
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnected:Z

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 499
    :cond_1
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    .line 454
    return-void
.end method
