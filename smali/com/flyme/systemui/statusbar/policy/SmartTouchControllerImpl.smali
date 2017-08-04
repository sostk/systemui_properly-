.class public final Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;
.super Ljava/lang/Object;
.source "SmartTouchControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/SmartTouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mIsSmartTouchOn:Z

.field mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

.field private mSmartTouchObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsSmartTouchOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 34
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchObserver:Landroid/database/ContentObserver;

    .line 47
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->setListening(Z)V

    .line 46
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    .line 103
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    goto :goto_0

    .line 101
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->isSmartTouchOn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;->onSmartTouchChanged(Z)V

    .line 107
    return-void
.end method


# virtual methods
.method public addSmartTouchControllerCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    .line 59
    return-void
.end method

.method public isSmartTouchOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 73
    const-string/jumbo v3, "mz_smart_touch_switch"

    .line 74
    const/4 v4, -0x2

    .line 72
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsSmartTouchOn:Z

    .line 75
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsInitialized:Z

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsSmartTouchOn:Z

    return v0
.end method

.method public removeSmartTouchControllerCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string/jumbo v1, "mz_smart_touch_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 91
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setSmartTouchOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 82
    const-string/jumbo v0, "SmartTouchControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartTouchOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->setSmartTouchOn(Z)V

    .line 81
    return-void
.end method
