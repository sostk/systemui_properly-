.class public Lcom/android/systemui/statusbar/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;


# instance fields
.field private mBootCompleted:Z

.field private mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

.field private mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mBootCompleted:Z

    .line 36
    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    const-string/jumbo v0, "SystemBars"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createStatusBarFromConfig()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const v4, 0x7f09014b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 94
    :cond_0
    const-string/jumbo v3, "No status bar component configured"

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 98
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 108
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mComponents:Ljava/util/Map;

    .line 109
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 112
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mBootCompleted:Z

    if-eqz v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->onBootCompleted()V

    .line 90
    :cond_2
    return-void

    .line 99
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 100
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 104
    .end local v2    # "t":Ljava/lang/Throwable;
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 105
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onBootCompleted()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mBootCompleted:Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onBootCompleted()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onNoService()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SystemBars;->createStatusBarFromConfig()V

    .line 59
    return-void
.end method

.method public onServiceStartAttempt()J
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 70
    iput-object v1, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 71
    const-wide/16 v0, 0x1f4

    return-wide v0

    .line 73
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor;

    const-string/jumbo v1, "SystemBars"

    .line 54
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "bar_service_component"

    .line 53
    const/4 v2, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/ServiceMonitor;-><init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->start()V

    .line 51
    return-void
.end method
