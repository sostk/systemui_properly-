.class Lcom/flyme/systemui/recents/model/StringLruCache;
.super Lcom/flyme/systemui/recents/model/KeyStoreLruCache;
.source "StringLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flyme/systemui/recents/model/KeyStoreLruCache",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;-><init>(I)V

    .line 23
    return-void
.end method
