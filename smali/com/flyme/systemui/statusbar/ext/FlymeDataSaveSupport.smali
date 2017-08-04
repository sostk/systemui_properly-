.class public Lcom/flyme/systemui/statusbar/ext/FlymeDataSaveSupport;
.super Ljava/lang/Object;
.source "FlymeDataSaveSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasAddNotShowVpnIconMethod()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    :try_start_0
    const-class v0, Landroid/net/IConnectivityManager;

    .line 54
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "addToNotShowVpnIcon"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return v7

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "vpnTrace"

    const-string/jumbo v3, "\u53cd\u5c04addToNotShowVpnIcon\u65b9\u6cd5\u4e0d\u5b58\u5728"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v6
.end method

.method public static isShowSavingFunc(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "canShowSavingFunc":Z
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v5

    .line 29
    .local v5, "isInternational":Z
    if-eqz v5, :cond_0

    .line 30
    const/4 v4, 0x1

    .line 31
    .local v4, "hasOperaMaxApplication":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 33
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v7, "com.opera.max.oem.meizu"

    .line 34
    const/4 v8, 0x1

    .line 33
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeDataSaveSupport;->hasAddNotShowVpnIconMethod()Z

    move-result v3

    .line 40
    .local v3, "hasMethod":Z
    const-string/jumbo v7, "vpnTrace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isShowSavingFunc hasOperaMaxApplication="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 41
    const-string/jumbo v9, "isInternal="

    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 42
    const-string/jumbo v9, ",hasMethod="

    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 44
    const-string/jumbo v7, "vpnTrace"

    const-string/jumbo v8, "\u56fa\u4ef6\u4e2d\u5df2\u7528operaMax,\u5e95\u5c42\u63a5\u53e3\u5df2\u63d0\u4f9b\uff0c\u4e14\u662f\u56fd\u9645\u7248"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v1, 0x1

    .line 48
    .end local v3    # "hasMethod":Z
    .end local v4    # "hasOperaMaxApplication":Z
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    return v1

    .line 35
    .restart local v4    # "hasOperaMaxApplication":Z
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .line 37
    const-string/jumbo v7, "vpnTrace"

    const-string/jumbo v8, "\u6ca1\u6709\u5b89\u88c5MeizuOperaMax"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
