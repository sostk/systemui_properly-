.class public Lcom/meizu/flyme/activeview/utils/PasswordUtils;
.super Ljava/lang/Object;
.source "PasswordUtils.java"


# static fields
.field private static final BANNER_ID:Ljava/lang/String; = "banner_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getZipPassward(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 14
    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 19
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 20
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_2

    .line 27
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    :goto_1
    return-object v3

    .line 15
    :cond_1
    return-object v3

    .line 20
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 21
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "banner_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 25
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .local v2, "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/MD5Util;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
