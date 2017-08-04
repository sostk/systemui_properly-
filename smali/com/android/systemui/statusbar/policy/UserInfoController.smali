.class public final Lcom/android/systemui/statusbar/policy/UserInfoController;
.super Ljava/lang/Object;
.source "UserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;,
        Lcom/android/systemui/statusbar/policy/UserInfoController$1;,
        Lcom/android/systemui/statusbar/policy/UserInfoController$2;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUseDefaultAvatar:Z

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/UserInfoController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUseDefaultAvatar:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$1;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$2;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    .line 61
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, v6}, Lcom/meizu/keyguard/BroadcastReceiverHelper;->registerReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v3, "profileFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method private notifyChanged()V
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 201
    .local v0, "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;->onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 199
    .end local v0    # "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    :cond_0
    return-void
.end method

.method private queryForUserInformation()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 125
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 126
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android"

    .line 127
    new-instance v12, Landroid/os/UserHandle;

    iget v13, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 126
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    .local v2, "currentUserContext":Landroid/content/Context;
    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    .line 136
    .local v7, "userId":I
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    .line 137
    .local v5, "isGuest":Z
    iget-object v9, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 139
    .local v9, "userName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 141
    .local v6, "res":Landroid/content/res/Resources;
    const v10, 0x7f0b03f8

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 142
    const v11, 0x7f0b03f7

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 140
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    .local v0, "avatarSize":I
    move-object v1, v2

    .line 145
    .local v1, "context":Landroid/content/Context;
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserInfoController$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$3;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 196
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v11, v14, [Ljava/lang/Void;

    invoke-virtual {v10, v11}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    return-void

    .line 131
    .end local v0    # "avatarSize":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "currentUserContext":Landroid/content/Context;
    .end local v5    # "isGuest":Z
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "UserInfoController"

    const-string/jumbo v11, "Couldn\'t get user info"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 128
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 129
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "UserInfoController"

    const-string/jumbo v11, "Couldn\'t create user context"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public reloadUserInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 116
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->queryForUserInformation()V

    .line 113
    return-void
.end method
