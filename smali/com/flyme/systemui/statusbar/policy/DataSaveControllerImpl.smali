.class public Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;
.super Ljava/lang/Object;
.source "DataSaveControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/DataSaveController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mUserInitiated:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mUserInitiated:Z

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mUserInitiated:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mUserInitiated:Z

    .line 24
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.meizu.systemui.datasaving.vpnstatus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mIntent:Landroid/content/Intent;

    .line 28
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;-><init>(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;)V

    .line 30
    .local v0, "receiver":Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;
    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;->register()V

    .line 27
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

    .line 70
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V

    goto :goto_0

    .line 68
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

    .prologue
    .line 75
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;->onDataSaveChanged()V

    .line 74
    return-void
.end method


# virtual methods
.method public addDataSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V

    .line 58
    return-void
.end method

.method public isDataSaveEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mUserInitiated:Z

    return v0
.end method

.method public isDataSaveSupported()Z
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

.method public removeDataSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public setDataSaveEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mUserInitiated:Z

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method
