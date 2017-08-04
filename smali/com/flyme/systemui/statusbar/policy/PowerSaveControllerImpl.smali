.class public final Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;
.super Ljava/lang/Object;
.source "PowerSaveControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/PowerSaveController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mMode:I

.field private mPowerSaveObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    .line 32
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;

    .line 33
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mPowerSaveObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->setListening(Z)V

    .line 43
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    .line 101
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    goto :goto_0

    .line 99
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->getPowerSaveMode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;->onPowerSaveModeChanged(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public addPowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    .line 49
    return-void
.end method

.method public getPowerSaveMode()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 70
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    if-ne v0, v3, :cond_0

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "mz_current_power_mode"

    const/4 v2, -0x2

    .line 71
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    .line 74
    :cond_0
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    return v0
.end method

.method public getSupportedConfigNums()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x3

    return v0
.end method

.method public isPowerSaveEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 61
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    if-ne v1, v4, :cond_0

    .line 62
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    const-string/jumbo v2, "mz_current_power_mode"

    const/4 v3, -0x2

    .line 62
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    .line 65
    :cond_0
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public removePowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string/jumbo v1, "mz_current_power_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, "powerSaveUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mPowerSaveObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    .end local v0    # "powerSaveUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mPowerSaveObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setPowerSaveMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "mz_current_power_mode"

    .line 81
    const/4 v2, -0x2

    .line 79
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 78
    return-void
.end method
