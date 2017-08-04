.class public Lcom/meizu/stats/UsageStatsProxy;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsProxy$Event;
    }
.end annotation


# static fields
.field public static final HAS_GSLB_LOG_KEY:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnline:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HAS_GSLB_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->HAS_GSLB_LOG_KEY:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The context is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_1

    .line 84
    return-void

    .line 88
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 93
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.meizu.stats"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 96
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    new-instance v1, Lcom/meizu/stats/UsageStatsManager;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-direct {v1, v2, v3, p3}, Lcom/meizu/stats/UsageStatsManager;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    .line 99
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    .line 78
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UsageStatsProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 121
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_1

    .line 122
    sget-object v1, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsProxy;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 128
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOfflineInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    return-object v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 347
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 348
    :cond_0
    return v1

    .line 350
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v2, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    return-void

    .line 213
    :cond_1
    const/4 v11, 0x0

    .line 214
    .local v11, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v11, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "value"

    move-object/from16 v0, p3

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 219
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v13, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    sget-object v14, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 218
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v14}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 206
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 237
    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    sget-object v12, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 236
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v12}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 229
    return-void
.end method

.method public onEventRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    return-void

    .line 255
    :cond_1
    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    .line 256
    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    sget-object v12, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 255
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v12}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v1, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 248
    :goto_0
    return-void

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method
