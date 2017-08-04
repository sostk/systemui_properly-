.class public Lcom/meizu/flyme/activeview/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableActivityIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 31
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 32
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-object v2

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    return-object v5
.end method

.method public static handleActionUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 125
    const/4 v0, 0x0

    .local v0, "actionResult":Z
    const/4 v1, -0x1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 140
    .end local v0    # "actionResult":Z
    :goto_1
    return v0

    .restart local v0    # "actionResult":Z
    :sswitch_0
    const-string/jumbo v3, "startActivity"

    .line 127
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "startService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "sendBroadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "sendLocalBroadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/utils/IntentUtils;->startActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .local v0, "actionResult":Z
    goto :goto_1

    .line 132
    .local v0, "actionResult":Z
    :pswitch_1
    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/utils/IntentUtils;->startService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .local v0, "actionResult":Z
    goto :goto_1

    .line 135
    .local v0, "actionResult":Z
    :pswitch_2
    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/utils/IntentUtils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .local v0, "actionResult":Z
    goto :goto_1

    .line 138
    .local v0, "actionResult":Z
    :pswitch_3
    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/utils/IntentUtils;->sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .local v0, "actionResult":Z
    goto :goto_1

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x5b20666f -> :sswitch_0
        -0x5424cde7 -> :sswitch_2
        0x29e21f3e -> :sswitch_3
        0x6e4047f3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 89
    :try_start_0
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 98
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v5

    .line 92
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return v5

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendLocalBroadcast(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentUri"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v2, 0x0

    return v2
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentUri"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0, p1}, Lcom/meizu/flyme/activeview/utils/IntentUtils;->getAvailableActivityIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v2, 0x1

    return v2

    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/4 v2, 0x0

    return v2
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentUri"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v2, 0x1

    return v2

    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v2, 0x0

    return v2
.end method
