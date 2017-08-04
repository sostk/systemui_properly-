.class public Lcom/meizu/flyme/activeview/version/BaseChecker;
.super Ljava/lang/Object;
.source "BaseChecker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/meizu/flyme/activeview/version/CheckListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/version/CheckListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/version/CheckListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_1

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener and context cant be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    if-eqz p2, :cond_0

    .line 19
    iput-object p2, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mListener:Lcom/meizu/flyme/activeview/version/CheckListener;

    .line 20
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected endCancel()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mListener:Lcom/meizu/flyme/activeview/version/CheckListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/version/CheckListener;->onCheckEnd(ILcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V

    .line 55
    return-void
.end method

.method protected endError()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mListener:Lcom/meizu/flyme/activeview/version/CheckListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/version/CheckListener;->onCheckEnd(ILcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V

    .line 59
    return-void
.end method

.method protected endSuccess(Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V
    .locals 2
    .param p1, "info"    # Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mListener:Lcom/meizu/flyme/activeview/version/CheckListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/meizu/flyme/activeview/version/CheckListener;->onCheckEnd(ILcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V

    .line 63
    return-void
.end method

.method protected invoke()Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 25
    iget-object v2, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/Utility;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 27
    .local v0, "hasNetwork":Z
    if-eqz v0, :cond_1

    .line 31
    iget-object v2, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/version/VersionManager;->checkUpdate(Landroid/content/Context;)Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    move-result-object v1

    .line 32
    .local v1, "info":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    if-nez v1, :cond_2

    const-string/jumbo v2, "VersionManager"

    const-string/jumbo v3, "check update return null"

    .line 48
    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-object v1

    .line 28
    .end local v1    # "info":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request check no network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/version/BaseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 29
    return-object v5

    .restart local v1    # "info":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    :cond_2
    const-string/jumbo v2, "VersionManager"

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "-----upgrade info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->isExistsUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "2.0.0"

    .line 37
    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getLatestVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    const-string/jumbo v2, "com.meizu.flyme.activeview"

    .line 41
    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getPluginType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    .line 45
    return-object v5

    .line 35
    :cond_3
    return-object v5

    .line 38
    :cond_4
    return-object v5

    .line 42
    :cond_5
    return-object v5
.end method
