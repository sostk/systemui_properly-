.class Lcom/flyme/systemui/recents/model/BitmapLruCache;
.super Lcom/flyme/systemui/recents/model/KeyStoreLruCache;
.source "BitmapLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flyme/systemui/recents/model/KeyStoreLruCache",
        "<",
        "Lcom/flyme/systemui/recents/misc/BitmapWithColor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;-><init>(I)V

    .line 25
    return-void
.end method
