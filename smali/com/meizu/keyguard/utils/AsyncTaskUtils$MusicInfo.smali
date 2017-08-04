.class Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/utils/AsyncTaskUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MusicInfo"
.end annotation


# instance fields
.field collection:Z

.field playmode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCollection(Z)V
    .locals 0
    .param p1, "collection"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;->collection:Z

    .line 24
    return-void
.end method

.method public setPlaymode(I)V
    .locals 0
    .param p1, "playmode"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;->playmode:I

    .line 28
    return-void
.end method
