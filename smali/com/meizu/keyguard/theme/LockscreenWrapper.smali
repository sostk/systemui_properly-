.class public Lcom/meizu/keyguard/theme/LockscreenWrapper;
.super Ljava/lang/Object;
.source "LockscreenWrapper.java"


# instance fields
.field private final DEBUG_WRAPPER:Z

.field private final FRAMEWORK_CLASS_NAME_IBIMUYU:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFrameworkInterface:Ljava/lang/Object;

.field private mInterface:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPkgClassloader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->DEBUG_WRAPPER:Z

    .line 27
    const-string/jumbo v2, "LockscreenWrapper"

    iput-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->TAG:Ljava/lang/String;

    .line 34
    const-string/jumbo v2, "com.zookingsoft.framework.lockscreen.load.LockscreenService"

    iput-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->FRAMEWORK_CLASS_NAME_IBIMUYU:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mClassName:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 54
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-class v3, Lcom/meizu/keyguard/theme/LockscreenWrapper;

    monitor-enter v3

    .line 56
    :try_start_0
    const-string/jumbo v2, "com.ibimuyu.lockscreen"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 58
    invoke-direct {p0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->loadFrameworkClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 60
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->initFramework()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*******************mFrameworkInterface = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    const-string/jumbo v4, ", mInterface = "

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 71
    invoke-direct {p0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->loadClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 73
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collect3rdPartEngineVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFrameworkInterface = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    const-string/jumbo v4, ", mInterface = "

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    goto/16 :goto_0

    .line 62
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 55
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 74
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private initFramework()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, "lockscreenInterface":Ljava/lang/Object;
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 544
    const/4 v3, 0x0

    .line 546
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "onInit"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    .line 547
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/os/Handler;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 546
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 548
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 560
    const-string/jumbo v5, "getLockscreenInterface"

    .line 559
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 561
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 567
    .end local v2    # "lockscreenInterface":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v2

    .line 549
    .restart local v2    # "lockscreenInterface":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "onInit"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 552
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/os/Handler;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 551
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 553
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 554
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 555
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 564
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadClass()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 455
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 459
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadClass, mPackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 460
    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    .line 459
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 460
    const-string/jumbo v6, ", mClassName = "

    .line 459
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 460
    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mClassName:Ljava/lang/String;

    .line 459
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 460
    const-string/jumbo v6, ", cls = "

    .line 459
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 462
    if-nez v1, :cond_2

    .line 464
    :try_start_1
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 467
    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    .line 468
    const/4 v7, 0x3

    .line 465
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 470
    .local v4, "packageContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    .line 472
    .end local v4    # "packageContext":Landroid/content/Context;
    :cond_0
    const-string/jumbo v5, "com.ibimuyu.lockscreen"

    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 473
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 474
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 475
    const-string/jumbo v6, "getInterfaceClass"

    .line 474
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 476
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 479
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load ibimuyu sdk, cls = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-static {v5}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 489
    :cond_2
    :goto_1
    return-object v1

    .line 480
    :cond_3
    const-string/jumbo v5, "com.vlife.mxlock.wallpaper"

    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 481
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    iget-object v6, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 483
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load weile sdk, cls = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-static {v5}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 485
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 456
    .end local v2    # "e":Ljava/lang/Exception;
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private loadFrameworkClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 571
    const-string/jumbo v3, "loadFrameworkClass for zk"

    invoke-static {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 575
    const-string/jumbo v4, "com.zookingsoft.framework.lockscreen.load.LockscreenService"

    .line 574
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 579
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v0, :cond_1

    .line 581
    :try_start_1
    iget-object v3, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 584
    const-string/jumbo v4, "com.ibimuyu.lockscreen"

    .line 585
    const/4 v5, 0x3

    .line 582
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 587
    .local v2, "packageContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    .line 589
    .end local v2    # "packageContext":Landroid/content/Context;
    :cond_0
    iget-object v3, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    const-string/jumbo v4, "com.zookingsoft.framework.lockscreen.load.LockscreenService"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 594
    :cond_1
    :goto_1
    return-object v0

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 576
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private loadLockView(Ljava/lang/String;Ljava/io/InputStream;ZZ)Landroid/view/View;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "istrean"    # Ljava/io/InputStream;
    .param p3, "autoShow"    # Z
    .param p4, "autoPlay"    # Z

    .prologue
    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "loadLockView"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    .line 138
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/io/InputStream;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 139
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 137
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 141
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 140
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 142
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v2, 0x0

    return-object v2
.end method

.method private loadLockView(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "autoShow"    # Z
    .param p4, "autoPlay"    # Z

    .prologue
    const/4 v10, 0x0

    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, "istrean":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v2    # "istrean":Ljava/io/FileInputStream;
    .local v3, "istrean":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "loadLockView"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    .line 167
    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 166
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 168
    .local v4, "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 169
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 168
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    if-eqz v3, :cond_2

    .line 175
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :goto_0
    const/4 v2, 0x0

    .line 168
    .end local v3    # "istrean":Ljava/io/FileInputStream;
    :goto_1
    return-object v5

    .line 176
    .restart local v3    # "istrean":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "istrean":Ljava/io/FileInputStream;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "istrean":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 171
    .end local v2    # "istrean":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    if-eqz v2, :cond_0

    .line 175
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 180
    :goto_3
    const/4 v2, 0x0

    .line 183
    :cond_0
    return-object v10

    .line 176
    :catch_2
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 173
    :goto_4
    if-eqz v2, :cond_1

    .line 175
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 180
    :goto_5
    const/4 v2, 0x0

    .line 172
    :cond_1
    throw v5

    .line 176
    :catch_3
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "istrean":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "istrean":Ljava/io/FileInputStream;
    .local v2, "istrean":Ljava/io/FileInputStream;
    goto :goto_4

    .line 170
    .end local v2    # "istrean":Ljava/io/FileInputStream;
    .restart local v3    # "istrean":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "istrean":Ljava/io/FileInputStream;
    .restart local v2    # "istrean":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "istrean":Ljava/io/FileInputStream;
    .restart local v3    # "istrean":Ljava/io/FileInputStream;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_2
    move-object v2, v3

    .end local v3    # "istrean":Ljava/io/FileInputStream;
    .restart local v2    # "istrean":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getBackground()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getBackground"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 390
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 391
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    const/4 v2, 0x0

    return-object v2
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 598
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .local v8, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v10, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 601
    .local v6, "manager":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v6, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 602
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 603
    .local v9, "version":Ljava/lang/String;
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string/jumbo v10, " : versionCode = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget v10, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    const-string/jumbo v10, "com.ibimuyu.lockscreen"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_0

    .line 608
    :try_start_1
    new-instance v1, Ldalvik/system/DexClassLoader;

    .line 609
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/data/data/com.android.systemui/app_apk/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 610
    iget v11, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 609
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 610
    const-string/jumbo v11, "/lockscreen.dex"

    .line 609
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 611
    const-string/jumbo v11, "/data/data/com.android.systemui/app_dex"

    .line 612
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "app_apk/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 613
    iget-object v13, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 608
    invoke-direct {v1, v10, v11, v12, v13}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 615
    .local v1, "dexClassLoader":Ldalvik/system/DexClassLoader;
    const-string/jumbo v10, "com.zookingsoft.cfg.Cfg"

    .line 614
    invoke-virtual {v1, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 616
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 617
    .local v7, "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "VERSION"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 618
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 619
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 620
    .local v2, "dexVersion":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 621
    const-string/jumbo v10, ", dex version = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 632
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .end local v2    # "dexVersion":Ljava/lang/Object;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "manager":Landroid/content/pm/PackageManager;
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v9    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 624
    .restart local v5    # "info":Landroid/content/pm/PackageInfo;
    .restart local v6    # "manager":Landroid/content/pm/PackageManager;
    .restart local v9    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 626
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 629
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "manager":Landroid/content/pm/PackageManager;
    .end local v9    # "version":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 630
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 94
    iput-object p1, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "init"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 97
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 96
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v7

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public load3PartLockView(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "autoShow"    # Z
    .param p4, "autoPlay"    # Z

    .prologue
    .line 188
    const-string/jumbo v1, "com.ibimuyu.lockscreen"

    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->loadLockView(Ljava/lang/String;Ljava/io/InputStream;ZZ)Landroid/view/View;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 199
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 196
    :cond_1
    const-string/jumbo v1, "com.vlife.mxlock.wallpaper"

    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->loadLockView(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onDestroy"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 113
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mFrameworkInterface:Ljava/lang/Object;

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 316
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 317
    const-string/jumbo v3, "onDispatchKeyEvent"

    .line 316
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 317
    const-class v5, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 316
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 318
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 319
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    return v7
.end method

.method public onHide()V
    .locals 5

    .prologue
    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onHide"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 259
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onPause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 287
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPlay()V
    .locals 5

    .prologue
    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onPlay"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 273
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onReLoad(ZZ)Landroid/view/View;
    .locals 7
    .param p1, "autoShow"    # Z
    .param p2, "autoPlay"    # Z

    .prologue
    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onReLoad"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 212
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 211
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 213
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 214
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    const/4 v2, 0x0

    return-object v2
.end method

.method public onRelease()V
    .locals 5

    .prologue
    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onRelease"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 228
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onShow(Z)V
    .locals 7
    .param p1, "autoPlay"    # Z

    .prologue
    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onShow"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 244
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 243
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 245
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUnlockRunnable(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runbale"    # Ljava/lang/Runnable;

    .prologue
    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 301
    const-string/jumbo v3, "setUnlockRunnable"

    .line 300
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 301
    const-class v5, Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 300
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 302
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUnlockSoundOn(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setUnlockSoundOn"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 407
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 406
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 408
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUnlockVibrateOn(Z)V
    .locals 7
    .param p1, "vibrate"    # Z

    .prologue
    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setUnlockVibrateOn"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 424
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 423
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 425
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/meizu/keyguard/theme/LockscreenWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
