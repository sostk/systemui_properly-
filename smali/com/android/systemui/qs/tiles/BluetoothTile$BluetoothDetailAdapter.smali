.class final Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    return-void
.end method

.method private updateIcon(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->getDeviceIcon(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 323
    .local v0, "icon":I
    if-eqz v0, :cond_0

    .line 324
    iput v0, p2, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 320
    .end local v0    # "icon":I
    :cond_0
    return-void
.end method

.method private updateItems()V
    .locals 15

    .prologue
    const v14, 0x7f0200d0

    .line 330
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "BluetoothController"

    const-string/jumbo v12, "updateItems"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v11, :cond_1

    return-void

    .line 332
    :cond_1
    const/4 v9, 0x0

    .line 333
    .local v9, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v11}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getPairedDevices()Ljava/util/Set;

    move-result-object v3

    .line 335
    .local v3, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;>;"
    const/4 v6, 0x0

    .line 336
    .local v6, "i":I
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v11}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDiscoveredDevices()Ljava/util/Set;

    move-result-object v4

    .line 337
    .local v4, "discoveredDevices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/BluetoothController$Device;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v10

    .line 338
    .local v10, "pairedDevicesNum":I
    :goto_0
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    .line 339
    .local v5, "discoveredDevicesNum":I
    :goto_1
    add-int v11, v10, v5

    new-array v9, v11, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 341
    .local v9, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    if-eqz v3, :cond_7

    .line 346
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .line 347
    .local v1, "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    new-instance v8, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v8}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 348
    .local v8, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    iput v14, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 349
    iget-object v11, v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    iput-object v11, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 350
    iget v11, v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v12, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    if-ne v11, v12, :cond_6

    .line 351
    const v11, 0x7f0200c7

    iput v11, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 353
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 359
    :cond_2
    :goto_3
    iget-object v11, v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    instance-of v11, v11, Landroid/bluetooth/BluetoothDevice;

    if-eqz v11, :cond_3

    .line 360
    iget-object v11, v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v11, v8}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateIcon(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 363
    :cond_3
    iput-object v1, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 364
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aput-object v8, v9, v6

    .line 365
    const-string/jumbo v11, "BluetoothController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateItems PairedDevice item= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 337
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    .end local v2    # "device$iterator":Ljava/util/Iterator;
    .end local v5    # "discoveredDevicesNum":I
    .end local v8    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .end local v10    # "pairedDevicesNum":I
    .local v9, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "pairedDevicesNum":I
    goto :goto_0

    .line 338
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "discoveredDevicesNum":I
    goto :goto_1

    .line 354
    .restart local v1    # "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    .restart local v2    # "device$iterator":Ljava/util/Iterator;
    .restart local v8    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .local v9, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_6
    iget v11, v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v12, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    if-ne v11, v12, :cond_2

    .line 355
    const v11, 0x7f0200c8

    iput v11, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 356
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v11}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f09009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    goto :goto_3

    .line 369
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    .end local v2    # "device$iterator":Ljava/util/Iterator;
    .end local v8    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_7
    if-eqz v4, :cond_9

    .line 370
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "device$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .line 371
    .local v0, "device":Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    new-instance v8, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v8}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 372
    .restart local v8    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    iput v14, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 373
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->name:Ljava/lang/String;

    iput-object v11, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 374
    iput-object v0, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 375
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->tag:Ljava/lang/Object;

    instance-of v11, v11, Landroid/bluetooth/BluetoothDevice;

    if-eqz v11, :cond_8

    .line 376
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->tag:Ljava/lang/Object;

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v11, v8}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateIcon(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 378
    :cond_8
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aput-object v8, v9, v6

    .line 379
    const-string/jumbo v11, "BluetoothController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateItems discoveredDevices item= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    .line 383
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    .end local v2    # "device$iterator":Ljava/util/Iterator;
    .end local v8    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_9
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v11, v9}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 329
    return-void
.end method


# virtual methods
.method public cleanupDetailView()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->cancelScanForBluetoothDevices()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 433
    return-void
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "createDetailView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scanForBluetoothDevices()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/BluetoothTile;->fireScanStateChanged(Z)V

    .line 301
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v1, "Bluetooth"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f0200c9

    .line 304
    const v2, 0x7f0900a8

    .line 303
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 306
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setEmptyState(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems;->setMinHeightInItems(I)V

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 311
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 5
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 388
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 390
    :cond_1
    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    if-eqz v2, :cond_3

    .line 391
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .line 392
    .local v1, "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    if-ne v2, v3, :cond_2

    .line 393
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V

    .line 394
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDetailItemClick device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showDetail(Z)V

    .line 387
    return-void

    .line 396
    :cond_3
    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    if-eqz v2, :cond_2

    .line 397
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .line 398
    .local v0, "device":Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->pair(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V

    .line 399
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDetailItemClick device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshEmptyState()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItems;->refreshEmptyState()V

    .line 416
    return-void
.end method

.method public setEmptyState(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    if-eqz p1, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->refreshEmptyState()V

    .line 421
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItems;->hideEmptyState()V

    goto :goto_0
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    .line 315
    return-void
.end method
