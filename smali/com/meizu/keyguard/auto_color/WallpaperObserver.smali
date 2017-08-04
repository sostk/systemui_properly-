.class public Lcom/meizu/keyguard/auto_color/WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperObserver.java"


# static fields
.field private static mRegister:Z

.field public static threshold_bright:F


# instance fields
.field protected final X:I

.field protected final Y:I

.field protected final brightXY:[[I

.field private mContext:Landroid/content/Context;

.field public mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWorkRunnable:Lcom/meizu/keyguard/auto_color/WorkRunnable;


# direct methods
.method static synthetic -set0(Lcom/meizu/keyguard/auto_color/WallpaperObserver;Lcom/meizu/keyguard/auto_color/WorkRunnable;)Lcom/meizu/keyguard/auto_color/WorkRunnable;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/WorkRunnable;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mRegister:Z

    .line 29
    const/high16 v0, 0x435c0000    # 220.0f

    sput v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->threshold_bright:F

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/16 v1, 0x32

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput v1, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->X:I

    iput v2, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->Y:I

    .line 18
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->brightXY:[[I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x64

    const/16 v1, 0x32

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput v1, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->X:I

    iput v2, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->Y:I

    .line 18
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->brightXY:[[I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 32
    return-void
.end method

.method private updateWallpaperColorBroadcast(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/WorkRunnable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/WorkRunnable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->isAlive:Z

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/keyguard/auto_color/WallpaperObserver$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/meizu/keyguard/auto_color/WallpaperObserver$1;-><init>(Lcom/meizu/keyguard/auto_color/WallpaperObserver;Landroid/content/Context;Lcom/meizu/keyguard/auto_color/WallpaperObserver;)V

    iput-object v1, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/WorkRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->updateWallpaperColorBroadcast(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public final register()V
    .locals 2

    .prologue
    .line 57
    sget-boolean v1, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mRegister:Z

    if-nez v1, :cond_0

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    const/4 v1, 0x1

    sput-boolean v1, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mRegister:Z

    .line 55
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public final unregister()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mRegister:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mRegister:Z

    .line 67
    :cond_0
    return-void
.end method

.method public updateWallpaperColorBroadcast()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->updateWallpaperColorBroadcast(Landroid/content/Context;)V

    .line 48
    return-void
.end method
