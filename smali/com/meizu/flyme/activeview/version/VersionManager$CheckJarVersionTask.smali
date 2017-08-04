.class Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;
.super Landroid/os/AsyncTask;
.source "VersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/version/VersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckJarVersionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCheckJarVersionListener:Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 156
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 160
    array-length v4, p1

    if-gtz v4, :cond_1

    .line 168
    :cond_0
    return-object v6

    .line 160
    :cond_1
    iget-object v4, p0, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 161
    aget-object v1, p1, v5

    .line 162
    .local v1, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 163
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->createNewActiveLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;

    move-result-object v3

    .line 164
    .local v3, "newJarClassLoader":Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    invoke-static {v3}, Lcom/meizu/flyme/activeview/version/VersionManager;->getJarVersion(Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "jarVersion":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->deleteNewActiveLoader(Ljava/lang/String;)V

    .line 166
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->mOnCheckJarVersionListener:Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->mOnCheckJarVersionListener:Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;

    invoke-interface {v0, p1}, Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;->onChecked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnCheckJarVersionListener(Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;)V
    .locals 0
    .param p1, "onCheckJarVersionListener"    # Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->mOnCheckJarVersionListener:Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;

    .line 180
    return-void
.end method
