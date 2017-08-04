.class public Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;
.super Ljava/lang/Object;
.source "EyeProtectiveControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEyeProtectiveObserver:Landroid/database/ContentObserver;

.field private mUserInitiated:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    .line 86
    new-instance v2, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mEyeProtectiveObserver:Landroid/database/ContentObserver;

    .line 28
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    .line 29
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "immediately_on_or_off"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    .line 30
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->setListening(Z)V

    .line 27
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    .line 69
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    goto :goto_0

    .line 67
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    .prologue
    .line 74
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;->onEyeProtectiveChanged()V

    .line 73
    return-void
.end method

.method private setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string/jumbo v1, "immediately_on_or_off"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    .local v0, "EyeProtectiveUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mEyeProtectiveObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    .end local v0    # "EyeProtectiveUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mEyeProtectiveObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public addEyeProtectiveControllerCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    .line 57
    return-void
.end method

.method public isEyeProtectiveEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    return v0
.end method

.method public isEyeProtectiveSupported()Z
    .locals 1

    .prologue
    .line 40
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

.method public removeEyeProtectiveControllerCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public setEyeProtectiveEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    .line 47
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "immediately_on_or_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, "eyeProtectiveState":I
    if-eqz p1, :cond_1

    .line 49
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "immediately_on_or_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged()V

    .line 44
    return-void

    .line 51
    :cond_1
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "immediately_on_or_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
