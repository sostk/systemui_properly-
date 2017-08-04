.class public Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;
.super Ljava/lang/Object;
.source "DriveModeControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/DriveModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDriveModeObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mUserInitiated:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mUserInitiated:Z

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mUserInitiated:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mUserInitiated:Z

    .line 28
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v2, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 31
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    .line 32
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_drive_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mUserInitiated:Z

    .line 33
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->setListening(Z)V

    .line 30
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 73
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    .line 74
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V

    goto :goto_0

    .line 72
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;->onDriveModeChanged()V

    .line 78
    return-void
.end method

.method private setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string/jumbo v1, "mz_drive_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, "DriveModeUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    .end local v0    # "DriveModeUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public addDriveModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V

    .line 62
    return-void
.end method

.method public isDriveModeEnabled()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mUserInitiated:Z

    return v0
.end method

.method public isDriveModeSupported()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeDriveModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public setDriveModeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mUserInitiated:Z

    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method
