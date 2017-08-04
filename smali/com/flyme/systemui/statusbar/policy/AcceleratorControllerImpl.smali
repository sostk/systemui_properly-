.class public Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;
.super Ljava/lang/Object;
.source "AcceleratorControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/AcceleratorController;


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mUserInitiated:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.systemui.accelerator.executing"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mIntent:Landroid/content/Intent;

    .line 25
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 64
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    .line 65
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    goto :goto_0

    .line 63
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;->onAcceleratorChanged()V

    .line 69
    return-void
.end method


# virtual methods
.method public addAcceleratorControllerCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    .line 53
    return-void
.end method

.method public isAcceleratorEnabled()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    return v0
.end method

.method public isAcceleratorSupported()Z
    .locals 1

    .prologue
    .line 35
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

.method public removeAcceleratorControllerCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public setAcceleratorEnabled()V
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    .line 41
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged()V

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)V

    .line 49
    const-wide/16 v2, 0x3e8

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void
.end method
