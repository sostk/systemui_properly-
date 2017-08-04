.class public Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;
.super Landroid/content/BroadcastReceiver;
.source "TimeTickTracker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->setListening(Z)V

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->sInstance:Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->sInstance:Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    .line 33
    :cond_0
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->sInstance:Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    return-object v0
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;

    .line 71
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    goto :goto_0

    .line 69
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;

    .prologue
    .line 76
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;->onTimeTick()V

    .line 75
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 60
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->notifyChanged()V

    .line 37
    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
