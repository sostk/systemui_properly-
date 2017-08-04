.class final Lcom/meizu/stats/UsageStatsProviderHelper;
.super Ljava/lang/Object;
.source "UsageStatsProviderHelper.java"


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnline:Z

.field private mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sLock:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onLine"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    .line 39
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    .line 40
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/meizu/stats/UsageStatsProvider;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsProvider;->onCreate()Z

    .line 37
    :cond_0
    return-void
.end method

.method private declared-synchronized applyBatch(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    monitor-enter p0

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "delCount":I
    const/4 v4, 0x0

    .line 211
    .local v4, "result":[Landroid/content/ContentProviderResult;
    :try_start_0
    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 213
    :try_start_1
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v6, p1}, Lcom/meizu/stats/UsageStatsProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 227
    .end local v4    # "result":[Landroid/content/ContentProviderResult;
    :goto_0
    if-eqz v4, :cond_1

    :try_start_2
    array-length v6, v4

    if-lez v6, :cond_1

    .line 228
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v4, v5

    .line 229
    .local v3, "res":Landroid/content/ContentProviderResult;
    iget-object v7, v3, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v0, v7

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 214
    .end local v3    # "res":Landroid/content/ContentProviderResult;
    .restart local v4    # "result":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v6, "UsageStatsProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "e":Landroid/content/OperationApplicationException;
    .end local v4    # "result":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 219
    .restart local v4    # "result":[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_3
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "com.meizu.usagestats"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .local v4, "result":[Landroid/content/ContentProviderResult;
    goto :goto_0

    .line 222
    .local v4, "result":[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v1

    .line 223
    .restart local v1    # "e":Landroid/content/OperationApplicationException;
    :try_start_4
    const-string/jumbo v6, "UsageStatsProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v2

    .line 221
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "UsageStatsProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "result":[Landroid/content/ContentProviderResult;
    :cond_1
    monitor-exit p0

    .line 232
    return v0
.end method

.method public static creatEvent(Landroid/database/Cursor;)Lcom/meizu/stats/UsageStatsProxy$Event;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 301
    if-nez p0, :cond_0

    .line 302
    return-object v3

    .line 304
    :cond_0
    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-direct {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>()V

    .line 305
    .local v1, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const-string/jumbo v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setId(I)V

    .line 306
    const-string/jumbo v3, "name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setName(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v3, "type"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setType(I)V

    .line 308
    const-string/jumbo v3, "sessionid"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setSessionid(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v3, "package"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setPackageName(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v3, "page"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setPage(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v3, "time"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->setTime(J)V

    .line 312
    const-string/jumbo v3, "properties"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "propertiesStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setProperties(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    const-string/jumbo v3, "network"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setNetwork(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v3, "channel"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->setChannelNum(J)V

    .line 324
    const-string/jumbo v3, "flyme_version"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setFlymeVersion(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v3, "package_version"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setPackageVersion(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v3, "event_source"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setSource(Ljava/lang/String;)V

    .line 327
    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "UsageStatsProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setProperties(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static creatEventValuse(Lcom/meizu/stats/UsageStatsProxy$Event;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    const/4 v2, 0x0

    .line 250
    if-nez p0, :cond_0

    .line 251
    return-object v2

    .line 253
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string/jumbo v2, "package"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v2, "sessionid"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v2, "time"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    const-string/jumbo v2, "page"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "propertiesStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    const-string/jumbo v2, "properties"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    const-string/jumbo v2, "network"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v2, "channel"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getChannelNum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string/jumbo v2, "flyme_version"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getFlymeVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v2, "package_version"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v2, "event_source"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-object v1
.end method

.method public static creatEventValuseForOldDbColumn(Lcom/meizu/stats/UsageStatsProxy$Event;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    const/4 v2, 0x0

    .line 276
    if-nez p0, :cond_0

    .line 277
    return-object v2

    .line 279
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string/jumbo v2, "package"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v2, "sessionid"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v2, "time"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    const-string/jumbo v2, "page"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "propertiesStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 290
    const-string/jumbo v2, "properties"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_2
    const-string/jumbo v2, "network"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v2, "channel"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getChannelNum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    const-string/jumbo v2, "flyme_version"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getFlymeVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v2, "package_version"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onLine"    # Z

    .prologue
    .line 47
    sget-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    if-nez v0, :cond_1

    .line 48
    sget-object v1, Lcom/meizu/stats/UsageStatsProviderHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-direct {v0, p0, p1}, Lcom/meizu/stats/UsageStatsProviderHelper;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 54
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertEventForOldDbColumn(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 155
    const-string/jumbo v3, "content://com.meizu.usagestats/event"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->creatEventValuseForOldDbColumn(Lcom/meizu/stats/UsageStatsProxy$Event;)Landroid/content/ContentValues;

    move-result-object v2

    .line 157
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    .local v0, "newUri":Landroid/net/Uri;
    return-void
.end method


# virtual methods
.method public declared-synchronized clearOldData()I
    .locals 5

    .prologue
    monitor-enter p0

    .line 236
    :try_start_0
    const-string/jumbo v2, "content://com.meizu.usagestats/clear_events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 238
    .local v1, "uri":Landroid/net/Uri;
    :try_start_1
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/meizu/stats/UsageStatsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 241
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "UsageStatsProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - Cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteEvent(Ljava/util/Collection;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    .line 182
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ge v7, v9, :cond_1

    :cond_0
    monitor-exit p0

    .line 183
    return v8

    .line 185
    :cond_1
    :try_start_1
    const-string/jumbo v7, "content://com.meizu.usagestats/event"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 186
    .local v6, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v5, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 188
    .local v2, "delCount":I
    const/4 v1, 0x0

    .line 189
    .local v1, "count":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "event$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 190
    .local v3, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    add-int/lit8 v1, v1, 0x1

    .line 191
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 192
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 193
    invoke-virtual {v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 192
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 195
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/16 v7, 0x32

    if-le v1, v7, :cond_2

    .line 197
    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsProviderHelper;->applyBatch(Ljava/util/ArrayList;)I

    move-result v7

    add-int/2addr v2, v7

    .line 198
    const/4 v1, 0x0

    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "count":I
    .end local v2    # "delCount":I
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v4    # "event$iterator":Ljava/util/Iterator;
    .end local v5    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 202
    .restart local v1    # "count":I
    .restart local v2    # "delCount":I
    .restart local v4    # "event$iterator":Ljava/util/Iterator;
    .restart local v5    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 203
    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsProviderHelper;->applyBatch(Ljava/util/ArrayList;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    add-int/2addr v2, v7

    :cond_4
    monitor-exit p0

    .line 205
    return v2
.end method

.method public declared-synchronized getEvents(I)Landroid/database/Cursor;
    .locals 8
    .param p1, "count"    # I

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "uri":Landroid/net/Uri;
    if-lez p1, :cond_0

    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://com.meizu.usagestats/event?limit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 78
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    const-string/jumbo v5, "time ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/stats/UsageStatsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 74
    .local v1, "uri":Landroid/net/Uri;
    :cond_0
    :try_start_2
    const-string/jumbo v0, "content://com.meizu.usagestats/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 81
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "time ASC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 83
    :catch_0
    move-exception v6

    .line 84
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v0, "UsageStatsProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 86
    return-object v7

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsCount()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 115
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEvents(I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 116
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 117
    .local v0, "count":I
    if-nez v1, :cond_0

    monitor-exit p0

    .line 118
    return v4

    .line 121
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 125
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 127
    return v0

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "UsageStatsProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 124
    .restart local v0    # "count":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    .line 125
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 8
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    monitor-enter p0

    .line 131
    if-nez p1, :cond_0

    monitor-exit p0

    .line 132
    return-void

    .line 134
    :cond_0
    :try_start_0
    const-string/jumbo v5, "content://com.meizu.usagestats/event"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 135
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->creatEventValuse(Lcom/meizu/stats/UsageStatsProxy$Event;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 137
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v5, :cond_2

    .line 138
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v5, v3, v4}, Lcom/meizu/stats/UsageStatsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 130
    return-void

    .line 140
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 141
    .local v2, "newUri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->insertEventForOldDbColumn(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 145
    .end local v2    # "newUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_3
    const-string/jumbo v5, "UsageStatsProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - Cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 148
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string/jumbo v5, "UsageStatsProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - Cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setOnline(Z)V
    .locals 2
    .param p1, "online"    # Z

    .prologue
    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eq v0, p1, :cond_0

    .line 59
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/meizu/stats/UsageStatsProvider;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    .line 63
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsProvider;->onCreate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 57
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "sessionid"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string/jumbo v4, "content://com.meizu.usagestats/event"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 332
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "event_source"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :try_start_0
    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    const-string/jumbo v5, "sessionid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/meizu/stats/UsageStatsProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sessionid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v4, "UsageStatsProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - Cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I

    goto :goto_0

    .line 343
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UsageStatsProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - Cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
