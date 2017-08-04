.class public Lcom/flyme/systemui/statusbar/policy/BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryTracker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;
    }
.end annotation


# instance fields
.field public health:I

.field public level:I

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field public plugType:I

.field public plugged:Z

.field public status:I

.field public technology:Ljava/lang/String;

.field public temperature:I

.field public testmode:Z

.field public voltage:I


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mHandler:Landroid/os/Handler;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->testmode:Z

    .line 100
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 129
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;

    .line 130
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;)V

    goto :goto_0

    .line 128
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;

    .prologue
    .line 135
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;->onBatteryLevelChanged(IZI)V

    .line 134
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;)V

    .line 119
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->testmode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_0
    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    .line 50
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    .line 52
    const-string/jumbo v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    .line 50
    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    .line 54
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugType:I

    .line 55
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugType:I

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugged:Z

    .line 56
    const-string/jumbo v1, "health"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->health:I

    .line 58
    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->status:I

    .line 60
    const-string/jumbo v1, "technology"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->technology:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "voltage"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->voltage:I

    .line 62
    const-string/jumbo v1, "temperature"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->temperature:I

    .line 64
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->notifyChanged()V

    .line 45
    :cond_1
    :goto_1
    return-void

    .line 48
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 55
    goto :goto_0

    .line 65
    :cond_4
    const-string/jumbo v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->testmode:Z

    .line 67
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;-><init>(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/BatteryTracker$Callback;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_1

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 104
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "sticky":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
