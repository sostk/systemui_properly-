.class public Lcom/android/systemui/keyguard/PalmRejection;
.super Ljava/lang/Object;
.source "PalmRejection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/PalmRejection$1;,
        Lcom/android/systemui/keyguard/PalmRejection$2;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field mDisableProximityRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mInAnim:Landroid/view/animation/Animation;

.field private mOutAnim:Landroid/view/animation/Animation;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOnAndTooClose:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusBarWindowView:Landroid/view/ViewGroup;

.field private mTipsLayout:Landroid/widget/LinearLayout;

.field private mTipsViewAdded:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/PalmRejection;)Lcom/android/systemui/statusbar/phone/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/PalmRejection;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/keyguard/PalmRejection;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/keyguard/PalmRejection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/keyguard/PalmRejection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/PalmRejection;->disableProximityLockLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/keyguard/PalmRejection;Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/PalmRejection;->proximityChangedLocked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    .line 47
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsViewAdded:Z

    .line 55
    new-instance v1, Lcom/android/systemui/keyguard/PalmRejection$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/PalmRejection$1;-><init>(Lcom/android/systemui/keyguard/PalmRejection;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 76
    new-instance v1, Lcom/android/systemui/keyguard/PalmRejection$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/PalmRejection$2;-><init>(Lcom/android/systemui/keyguard/PalmRejection;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mDisableProximityRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mStatusBarWindowView:Landroid/view/ViewGroup;

    .line 91
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 92
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "PhoneWindowManager.mProximityWakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 94
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 95
    iget-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensor:Landroid/hardware/Sensor;

    .line 88
    return-void
.end method

.method private disableProximityLockLocked()V
    .locals 5

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mDisableProximityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    const-string/jumbo v2, "PalmRejection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disableProximityLockLocked, mProximitySensorEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 203
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 204
    const-string/jumbo v2, "PalmRejection"

    const-string/jumbo v3, "mSensorManager.unregisterListener(mProximityListener)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 212
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    .line 214
    const-string/jumbo v2, "PalmRejection"

    const-string/jumbo v3, "mProximityWakeLock.release()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "identity":J
    :goto_0
    return-void

    .line 205
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v2

    .line 217
    .end local v0    # "identity":J
    :cond_1
    const-string/jumbo v2, "PalmRejection"

    const-string/jumbo v3, "disableProximityLockLocked() failed... Proximity Sensor already disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 177
    const-string/jumbo v2, "PalmRejection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableProximityLockLocked, mProximitySensorEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 179
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    .line 180
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 184
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 185
    iget-object v4, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    .line 184
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mDisableProximityRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .end local v0    # "identity":J
    :goto_0
    return-void

    .line 186
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw v2

    .line 192
    .end local v0    # "identity":J
    :cond_0
    const-string/jumbo v2, "PalmRejection"

    const-string/jumbo v3, "enableProximityLockLocked() failed...Proximity Sensor already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private proximityChangedLocked(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 223
    const-string/jumbo v0, "PalmRejection"

    const-string/jumbo v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 227
    :cond_0
    const-string/jumbo v0, "PalmRejection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proximityChangedLocked, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mScreenOnAndTooClose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mScreenOnAndTooClose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz p1, :cond_1

    .line 230
    const-string/jumbo v0, "PalmRejection"

    const-string/jumbo v1, "active!!! mHandler.removeCallbacks(mWakeUpScreenRunnable)()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mDisableProximityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mScreenOnAndTooClose:Z

    .line 221
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mScreenOnAndTooClose:Z

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/PalmRejection;->removeView()V

    .line 238
    :cond_2
    const-string/jumbo v0, "PalmRejection"

    const-string/jumbo v1, "no active! go on wakup!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addView()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 131
    const-string/jumbo v2, "PalmRejection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add tips layout, mScreenOnAndTooClose = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/PalmRejection;->mScreenOnAndTooClose:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    const-string/jumbo v4, ", mTipsViewAdded = "

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsViewAdded:Z

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mScreenOnAndTooClose:Z

    if-eqz v2, :cond_1

    .line 134
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsViewAdded:Z

    if-nez v2, :cond_1

    .line 135
    const-string/jumbo v2, "PalmRejection"

    const-string/jumbo v3, "add tips layout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 138
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v2, 0x7f040015

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    .line 139
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 140
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0f009f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    .local v0, "calibrate":Landroid/widget/TextView;
    new-instance v2, Lcom/android/systemui/keyguard/PalmRejection$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/PalmRejection$3;-><init>(Lcom/android/systemui/keyguard/PalmRejection;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    const v3, 0x7f050007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mInAnim:Landroid/view/animation/Animation;

    .line 165
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    const v3, 0x7f050008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mOutAnim:Landroid/view/animation/Animation;

    .line 167
    .end local v0    # "calibrate":Landroid/widget/TextView;
    .end local v1    # "inflate":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mStatusBarWindowView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsViewAdded:Z

    .line 170
    return v5

    .line 173
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0b035c

    const/4 v5, 0x0

    .line 248
    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    .line 251
    const v4, 0x7f0f009f

    .line 250
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    .local v0, "calibrateView":Landroid/widget/TextView;
    const v3, 0x7f090146

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 253
    invoke-virtual {v0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    .line 258
    const v4, 0x7f0f00a0

    .line 257
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 259
    .local v2, "textView":Landroid/widget/TextView;
    const v3, 0x7f09011c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 263
    const v4, 0x7f0b0351

    .line 262
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 260
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 264
    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    .line 265
    const v4, 0x7f0f00a1

    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    .local v1, "exitView":Landroid/widget/TextView;
    const v3, 0x7f09011d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 267
    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    .end local v0    # "calibrateView":Landroid/widget/TextView;
    .end local v1    # "exitView":Landroid/widget/TextView;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/PalmRejection;->removeViewAndDisableProximity(Z)V

    .line 98
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/MzGestureHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/MzGestureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzGestureHelper;->isPalmRejectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    .line 105
    const/4 v2, 0x1

    .line 104
    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 106
    .local v0, "ringing":Z
    :goto_0
    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/keyguard/PalmRejection;->enableProximityLockLocked()V

    .line 102
    .end local v0    # "ringing":Z
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ringing":Z
    goto :goto_0
.end method

.method public removeView()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/PalmRejection;->removeViewAndDisableProximity(Z)V

    .line 112
    return-void
.end method

.method public removeViewAndDisableProximity(Z)V
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsViewAdded:Z

    if-eqz v0, :cond_1

    .line 118
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/PalmRejection;->mStatusBarWindowView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    iput-object v3, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsLayout:Landroid/widget/LinearLayout;

    .line 124
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mTipsViewAdded:Z

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/PalmRejection;->disableProximityLockLocked()V

    .line 127
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/PalmRejection;->mScreenOnAndTooClose:Z

    .line 116
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/keyguard/PalmRejection;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 242
    return-void
.end method
