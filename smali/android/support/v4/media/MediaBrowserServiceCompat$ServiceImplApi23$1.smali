.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserServiceCompat.java"


# instance fields
.field final synthetic val$cb:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const-string/jumbo v2, "media_item"

    .line 471
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    const/4 v1, 0x0

    .line 473
    .local v1, "itemParcel":Landroid/os/Parcel;
    if-nez v0, :cond_0

    .line 477
    .end local v1    # "itemParcel":Landroid/os/Parcel;
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1;->val$cb:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;

    invoke-interface {v2, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;->onItemLoaded(ILandroid/os/Bundle;Landroid/os/Parcel;)V

    .line 478
    return-void

    .line 474
    .restart local v1    # "itemParcel":Landroid/os/Parcel;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "itemParcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
