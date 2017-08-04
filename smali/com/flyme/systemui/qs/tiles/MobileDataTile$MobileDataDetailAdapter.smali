.class final Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileDataDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mMode:I

.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method

.method private addItem(I)Lcom/android/systemui/qs/QSDetailItems$Item;
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 405
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object v2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->isCalling()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-set0(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 406
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 407
    .local v0, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/MobileDataTile;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 408
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->invisible:Z

    .line 409
    iget v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mMode:I

    if-ne p1, v1, :cond_0

    .line 412
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 415
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 416
    const-string/jumbo v1, "MobileDataTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateItems item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-object v0
.end method

.method private updateItems()V
    .locals 5

    .prologue
    .line 393
    const-string/jumbo v3, "MobileDataTile"

    const-string/jumbo v4, "updateItems"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v3, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->getModes()[I

    move-result-object v2

    .line 397
    .local v2, "modes":[I
    array-length v3, v2

    new-array v1, v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 398
    .local v1, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 399
    aget v3, v2, v0

    invoke-direct {p0, v3}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->addItem(I)Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v3

    aput-object v3, v1, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 392
    return-void
.end method


# virtual methods
.method public cleanupDetailView()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-set0(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 383
    return-void
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 369
    const-string/jumbo v0, "MobileDataTile"

    const-string/jumbo v1, "createDetailView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->getPreferredMode()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mMode:I

    .line 371
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 372
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v1, "PowerSave"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 376
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setMinHeightInItems(I)V

    .line 377
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->updateItems()V

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->setItemsVisible(Z)V

    .line 379
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 422
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 424
    .local v0, "mode":I
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->setPreferredMode(I)V

    .line 425
    const-string/jumbo v1, "MobileDataTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDetailItemClick mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->showDetail(Z)V

    .line 421
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    .line 387
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 434
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    .line 433
    return-void
.end method

.method public setMobileDataMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 438
    iput p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mMode:I

    .line 439
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->updateItems()V

    .line 437
    return-void
.end method
