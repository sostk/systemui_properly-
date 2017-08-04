.class public Lcom/meizu/stats/UsageStatsProvider;
.super Landroid/content/ContentProvider;
.source "UsageStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

.field private mEventLimit:I

.field private mOnline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 118
    sget-object v0, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.meizu.usagestats"

    const-string/jumbo v2, "event"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.meizu.usagestats"

    const-string/jumbo v2, "clear_events"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 26
    const-string/jumbo v0, "UsageStatsProvider"

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProvider;->TAG:Ljava/lang/String;

    .line 128
    sget v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->MAX_EVENT_RECORD:I

    iput v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 26
    const-string/jumbo v0, "UsageStatsProvider"

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProvider;->TAG:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mOnline:Z

    .line 133
    sget v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_MAX_EVENT_RECORD:I

    iput v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    .line 134
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method private clearOldEvents()V
    .locals 4

    .prologue
    .line 312
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 313
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    const-string/jumbo v1, "UsageStatsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEventsCount :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsProvider;->getEventsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsProvider;->getEventsCount()I

    move-result v1

    iget v2, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    if-le v1, v2, :cond_1

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete from event where _id not in ( select _id from event order by time desc limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    iget v2, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    div-int/lit8 v2, v2, 0x2

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    const-string/jumbo v2, ")"

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v1, "UsageStatsProvider"

    const-string/jumbo v2, "clearOldEvents."

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_1
    return-void
.end method

.method private getEventsCount()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 289
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 290
    return v5

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 293
    .local v0, "count":I
    const/4 v1, 0x0

    .line 295
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v4, "select count(*) from event"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 296
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 297
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 304
    :cond_1
    if-eqz v1, :cond_2

    .line 305
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 308
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v0

    .line 301
    :catch_0
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "UsageStatsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - Cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    if-eqz v1, :cond_2

    .line 305
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 304
    if-eqz v1, :cond_3

    .line 305
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_3
    throw v4
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .line 267
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 268
    .local v3, "numOperations":I
    new-array v4, v3, [Landroid/content/ContentProviderResult;

    .line 269
    .local v4, "results":[Landroid/content/ContentProviderResult;
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 270
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 271
    return-object v6

    .line 274
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 276
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5, p0, v4, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v5

    aput-object v5, v4, v2

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    .end local v2    # "i":I
    :goto_1
    return-object v4

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "UsageStatsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - Cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 281
    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 216
    sget-object v3, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 217
    .local v2, "table":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 218
    return v4

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 222
    return v4

    .line 224
    :cond_1
    const/4 v1, 0x0

    .line 225
    .local v1, "rows":I
    packed-switch v2, :pswitch_data_0

    .line 235
    :goto_0
    if-lez v1, :cond_2

    .line 236
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 238
    :cond_2
    return v1

    .line 227
    :pswitch_0
    const-string/jumbo v3, "event"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsProvider;->clearOldEvents()V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 175
    sget-object v1, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 176
    .local v0, "table":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 177
    const/4 v1, 0x0

    return-object v1

    .line 179
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :pswitch_0
    const-string/jumbo v1, "vnd.android.cursor.dir/event"

    return-object v1

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 189
    sget-object v5, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 190
    .local v4, "table":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 191
    return-object v8

    .line 193
    :cond_0
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 195
    return-object v8

    .line 197
    :cond_1
    const-wide/16 v2, -0x1

    .line 198
    .local v2, "rowId":J
    const/4 v1, 0x0

    .line 199
    .local v1, "newUri":Landroid/net/Uri;
    packed-switch v4, :pswitch_data_0

    .line 208
    .end local v1    # "newUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 209
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 211
    :cond_3
    return-object v1

    .line 201
    .restart local v1    # "newUri":Landroid/net/Uri;
    :pswitch_0
    const-string/jumbo v5, "event"

    invoke-virtual {v0, v5, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 202
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://com.meizu.usagestats/event/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "newUri":Landroid/net/Uri;
    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mOnline:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    .line 142
    :cond_0
    new-instance v0, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 148
    sget-object v2, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 149
    .local v9, "table":I
    if-ge v9, v3, :cond_0

    .line 150
    return-object v5

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 153
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 154
    return-object v5

    .line 156
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 157
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "limit":Ljava/lang/String;
    const-string/jumbo v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 161
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 167
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :pswitch_0
    const-string/jumbo v2, "event"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 170
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 243
    sget-object v3, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 244
    .local v2, "table":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 245
    return v4

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 248
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 249
    return v4

    .line 251
    :cond_1
    const/4 v1, 0x0

    .line 252
    .local v1, "rows":I
    packed-switch v2, :pswitch_data_0

    .line 258
    :goto_0
    if-lez v1, :cond_2

    .line 259
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 261
    :cond_2
    return v1

    .line 254
    :pswitch_0
    const-string/jumbo v3, "event"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
