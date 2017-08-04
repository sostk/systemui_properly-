.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    .line 60
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    const-class v1, Lcom/android/systemui/recents/Recents;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    const-class v1, Lcom/android/systemui/volume/VolumeUI;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 63
    const-class v1, Lcom/android/systemui/statusbar/SystemBars;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    const-class v1, Lcom/android/systemui/usb/StorageNotification;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 65
    const-class v1, Lcom/android/systemui/power/PowerUI;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 66
    const-class v1, Lcom/android/systemui/media/RingtonePlayer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 59
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 170
    iget-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v1, v2

    .line 172
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wellcome_page_version"

    invoke-static {v5, v6, v7, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 82
    .local v2, "version":I
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 83
    const-string/jumbo v6, "flyme_version_setting_up"

    .line 82
    invoke-static {v5, v6, v7, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 84
    .local v3, "welcomeSetup":I
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.flyme.systemuitools"

    const-string/jumbo v6, "com.flyme.systemuitools.wellcomepage.WellcomePage"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v4, "wellcomePage":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 86
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-ne v2, v9, :cond_2

    if-nez v3, :cond_2

    .line 87
    :cond_0
    invoke-virtual {v1, v4, v9, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 88
    const-string/jumbo v5, "SystemUIService"

    const-string/jumbo v6, "disable app"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    :goto_0
    const v5, 0x7f0c0124

    invoke-virtual {p0, v5}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 102
    new-instance v5, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-static {p0, v5, v0}, Lcom/meizu/keyguard/BroadcastReceiverHelper;->registerReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    invoke-static {p0}, Lcom/meizu/common/renderer/effect/GLRenderer;->initialize(Landroid/content/Context;)V

    .line 120
    const-string/jumbo v5, "native_glrenderer"

    invoke-static {v5}, Lcom/meizu/common/renderer/effect/GLRenderer;->setLibraryName(Ljava/lang/String;)V

    .line 78
    return-void

    .line 86
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    if-ne v2, v9, :cond_3

    if-ne v3, v8, :cond_1

    .line 90
    :cond_3
    invoke-virtual {v1, v4, v8, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 91
    const-string/jumbo v5, "SystemUIService"

    const-string/jumbo v6, "enable app"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 191
    const-string/jumbo v0, "SystemUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/Console;->trimMemoryLevelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 194
    invoke-static {p1}, Lcom/android/systemui/recents/Recents;->onTrimMemory(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 131
    iget-boolean v5, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v5, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-nez v5, :cond_1

    .line 138
    const-string/jumbo v5, "1"

    const-string/jumbo v6, "sys.boot_completed"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    iput-boolean v7, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    .line 144
    :cond_1
    const-string/jumbo v5, "SystemUIService"

    const-string/jumbo v6, "Starting SystemUI services."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v5

    .line 146
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 147
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    aget-object v1, v5, v4

    .line 150
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/SystemUI;

    aput-object v5, v6, v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    iput-object p0, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 157
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v6, v5, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 159
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/systemui/SystemUI;->start()V

    .line 161
    iget-boolean v5, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 146
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    .line 154
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 151
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 152
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 165
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :cond_3
    iput-boolean v7, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    .line 130
    return-void
.end method
