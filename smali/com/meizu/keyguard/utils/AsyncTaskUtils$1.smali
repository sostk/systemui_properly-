.class final Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;
.super Landroid/os/AsyncTask;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/utils/AsyncTaskUtils;->updateMusicState(Lcom/meizu/media/music/support/IMusicSupportService;Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;

.field final synthetic val$musicSupportService:Lcom/meizu/media/music/support/IMusicSupportService;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/support/IMusicSupportService;Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;)V
    .locals 0
    .param p1, "val$musicSupportService"    # Lcom/meizu/media/music/support/IMusicSupportService;
    .param p2, "val$callback"    # Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->val$musicSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    iput-object p2, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->val$callback:Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 40
    :try_start_0
    new-instance v1, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;

    invoke-direct {v1}, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;-><init>()V

    .line 41
    .local v1, "musicInfo":Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;
    iget-object v2, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->val$musicSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->val$musicSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    invoke-interface {v2}, Lcom/meizu/media/music/support/IMusicSupportService;->isCollected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;->setCollection(Z)V

    .line 43
    iget-object v2, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->val$musicSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    invoke-interface {v2}, Lcom/meizu/media/music/support/IMusicSupportService;->getPlayMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;->setPlaymode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    return-object v1

    .line 46
    .end local v1    # "musicInfo":Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->doInBackground([Ljava/lang/Void;)Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;)V
    .locals 3
    .param p1, "result"    # Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->val$callback:Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;

    iget-boolean v1, p1, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;->collection:Z

    iget v2, p1, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;->playmode:I

    invoke-interface {v0, v1, v2}, Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;->onChecked(ZI)V

    .line 53
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string/jumbo v0, "AsyncTaskUtils"

    const-string/jumbo v1, "no music result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/utils/AsyncTaskUtils$1;->onPostExecute(Lcom/meizu/keyguard/utils/AsyncTaskUtils$MusicInfo;)V

    return-void
.end method
