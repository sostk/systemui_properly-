.class public Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;
.super Ljava/lang/Object;
.source "RecentsEvents.java"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string/jumbo v0, "recents.Events"

    const-string/jumbo v1, "UpdateRecentsActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p1, p0, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 75
    return-void
.end method
