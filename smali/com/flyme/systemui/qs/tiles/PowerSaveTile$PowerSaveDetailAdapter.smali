.class final Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;
.super Ljava/lang/Object;
.source "PowerSaveTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/PowerSaveTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerSaveDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mMode:I

.field private mSelectedItem:Lcom/android/systemui/qs/QSDetailItems$Item;

.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;-><init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)V

    return-void
.end method

.method private addItem(I)Lcom/android/systemui/qs/QSDetailItems$Item;
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 198
    .local v0, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->getReadableNameForMode(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 199
    iget v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mMode:I

    if-ne p1, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get2(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09023c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    .line 202
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get1(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Ljava/lang/String;

    move-result-object v1

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

    .line 204
    return-object v0
.end method

.method private getReadableNameForMode(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get2(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 224
    :pswitch_0
    const v0, 0x7f0900a0

    .line 225
    goto :goto_0

    .line 227
    :pswitch_1
    const v0, 0x7f0900a2

    .line 228
    goto :goto_0

    .line 230
    :pswitch_2
    const v0, 0x7f0900a1

    .line 231
    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateItems()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 182
    invoke-static {}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v4}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get1(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "updateItems"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v4, :cond_1

    return-void

    .line 184
    :cond_1
    const/4 v2, 0x0

    .line 185
    .local v2, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v4}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get3(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    move-result-object v4

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->getSupportedConfigNums()I

    move-result v3

    .line 186
    .local v3, "modes":I
    if-lez v3, :cond_2

    .line 187
    new-array v2, v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 189
    .local v2, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v0, 0x1

    .local v0, "i":I
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->addItem(I)Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v4

    aput-object v4, v2, v6

    .line 190
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->addItem(I)Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v4

    aput-object v4, v2, v0

    .line 191
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->addItem(I)Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v4

    aput-object v4, v2, v1

    .line 193
    .end local v0    # "i":I
    .end local v2    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_2
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 181
    return-void
.end method


# virtual methods
.method public cleanupDetailView()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public clickLastSelectionItem()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mSelectedItem:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 238
    return-void
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 159
    invoke-static {}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get1(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "createDetailView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v1, "PowerSave"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setMinHeightInItems(I)V

    .line 166
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->updateItems()V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->setItemsVisible(Z)V

    .line 168
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 210
    :cond_1
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mSelectedItem:Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 211
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, "mode":I
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get3(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->setPowerSaveMode(I)V

    .line 213
    invoke-static {}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-get1(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Ljava/lang/String;

    move-result-object v1

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

    .line 208
    :cond_2
    return-void
.end method

.method public onPowerSaveModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mMode:I

    .line 245
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->updateItems()V

    .line 243
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    .line 176
    return-void
.end method
