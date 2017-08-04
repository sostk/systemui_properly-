.class public Lcom/meizu/keyguard/utils/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;,
        Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateMusicState(Lcom/meizu/media/music/support/IMusicSupportService;Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;)V
    .locals 2
    .param p0, "musicSupportService"    # Lcom/meizu/media/music/support/IMusicSupportService;
    .param p1, "callback"    # Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;

    .prologue
    .line 35
    new-instance v0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;-><init>(Lcom/meizu/media/music/support/IMusicSupportService;Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;)V

    .line 61
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void
.end method
