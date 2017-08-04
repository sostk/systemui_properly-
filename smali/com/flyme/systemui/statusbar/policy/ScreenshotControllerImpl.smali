.class public Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;
.super Ljava/lang/Object;
.source "ScreenshotControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenshotController;


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsCapturing:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mIsCapturing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->SimulatePrintScreenkey(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private SimulatePrintScreenkey(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 82
    const-string/jumbo v0, "ScreenshotController"

    const-string/jumbo v1, "ScreenshotTile down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$3;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    const-string/jumbo v0, "ScreenshotTile"

    invoke-static {p1, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    .line 73
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    goto :goto_0

    .line 71
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mIsCapturing:Z

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;->onScreenshotStateChanged(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public addScreenshotControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    .line 61
    return-void
.end method

.method public capturePicture()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    .line 57
    const-wide/16 v2, 0x64

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mIsCapturing:Z

    return v0
.end method

.method public removeScreenshotControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public takeScreenShot()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method
