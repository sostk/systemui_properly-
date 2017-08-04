.class public Lcom/meizu/common/util/SDCardHelper;
.super Landroid/content/BroadcastReceiver;
.source "SDCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/SDCardHelper$1;,
        Lcom/meizu/common/util/SDCardHelper$MountPoint;,
        Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;,
        Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/common/util/SDCardHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsMounted:Z

.field private mMountPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/util/SDCardHelper$MountPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

.field private sDescription:Ljava/lang/reflect/Method;

.field private sIsRemovable:Ljava/lang/reflect/Method;

.field private sPath:Ljava/lang/reflect/Method;

.field private sStorageVolumes:[Ljava/lang/Object;

.field private sVolumeState:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 31
    new-instance v1, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;-><init>(Lcom/meizu/common/util/SDCardHelper$1;)V

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/SDCardHelper;->getMountPointList(Landroid/content/Context;)Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->isSDCardMounted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 71
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/meizu/common/util/SDCardHelper;

    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    if-eqz v0, :cond_1

    .line 52
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 50
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/common/util/SDCardHelper;

    invoke-direct {v0, p0}, Lcom/meizu/common/util/SDCardHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static getInstance()Lcom/meizu/common/util/SDCardHelper;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    return-object v0
.end method


# virtual methods
.method public getMountPointList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/util/SDCardHelper$MountPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v8, "storage"

    .line 174
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 176
    .local v6, "sm":Landroid/os/storage/StorageManager;
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 180
    :try_start_0
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 185
    :goto_0
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_2

    .line 213
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    return-object v8

    .line 181
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getVolumeList"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    iput-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 187
    .local v7, "volume":Ljava/lang/Object;
    new-instance v5, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    invoke-direct {v5, p0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;-><init>(Lcom/meizu/common/util/SDCardHelper;)V

    .line 188
    .local v5, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    if-nez v8, :cond_4

    .line 189
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getDescription"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    .line 190
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getPath"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    .line 191
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "isRemovable"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    .line 192
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getVolumeState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    .line 194
    :goto_3
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    .local v4, "location":Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$300(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 199
    invoke-static {v5, v4}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$400(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 202
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$500(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 206
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v5, v8}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$600(Lcom/meizu/common/util/SDCardHelper$MountPoint;Z)V

    .line 207
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 188
    .end local v4    # "location":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_3

    goto :goto_3
.end method

.method public getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 4

    .prologue
    .line 140
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 145
    return-object v2

    .line 140
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 141
    .local v1, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$200(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    return-object v1
.end method

.method public getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 169
    return-object v2

    .line 164
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 165
    .local v1, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$200(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    return-object v1
.end method

.method public getStorageMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 3

    .prologue
    .line 152
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 157
    return-object v2

    .line 152
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 153
    .local v1, "mountPoint":Lcom/meizu/common/util/SDCardHelper$MountPoint;
    invoke-static {v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    return-object v1
.end method

.method public isMounted()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    return v0
.end method

.method public isOtgMounted()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSDCardMounted()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyStateChanged(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mounted"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->notifyStateChanged(Landroid/content/Intent;Z)V

    .line 108
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 75
    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    .line 76
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/SDCardHelper;->getMountPointList(Landroid/content/Context;)Ljava/util/List;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 84
    invoke-virtual {p0, p2, v3}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 86
    :cond_1
    iput-boolean v2, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 87
    invoke-virtual {p0, p2, v2}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 89
    :cond_2
    iput-boolean v2, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 90
    invoke-virtual {p0, p2, v2}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public registerStateObserver(Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->registerObserver(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public unregisterStateObserver(Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
