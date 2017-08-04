.class Lcom/flyme/systemui/recents/model/SecretTaskManager$2;
.super Ljava/lang/Object;
.source "SecretTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/model/SecretTaskManager;->updatePayAppList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/model/SecretTaskManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/model/SecretTaskManager;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    iput-object p2, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 152
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v1, "pkgName"

    aput-object v1, v2, v5

    .line 154
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "operationValue=?"

    .line 155
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v4, v5

    .line 156
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 158
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-static {v1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->-get0(Lcom/flyme/systemui/recents/model/SecretTaskManager;)Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-static {v1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->-get0(Lcom/flyme/systemui/recents/model/SecretTaskManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 164
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-static {v1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->-get0(Lcom/flyme/systemui/recents/model/SecretTaskManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->val$context:Landroid/content/Context;

    const-string/jumbo v9, "recents_secret_alphame"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v9, "packageList"

    iget-object v10, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;->this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-static {v10}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->-get0(Lcom/flyme/systemui/recents/model/SecretTaskManager;)Ljava/util/HashSet;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 161
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v5

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 172
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    if-eqz v6, :cond_2

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 173
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 174
    if-eqz v6, :cond_3

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_3
    throw v1
.end method
