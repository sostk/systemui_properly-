.class public Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;
.super Ljava/lang/Object;
.source "LockWallpaperObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$1;
    }
.end annotation


# static fields
.field public static mColor:I

.field public static mRect:Landroid/graphics/Rect;


# instance fields
.field protected final X:I

.field protected final Y:I

.field protected final brightXY:[[I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field public mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWorkRunnable:Lcom/meizu/keyguard/auto_color/LockWorkRunnable;


# direct methods
.method static synthetic -set0(Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Lcom/meizu/keyguard/auto_color/LockWorkRunnable;)Lcom/meizu/keyguard/auto_color/LockWorkRunnable;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/LockWorkRunnable;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mRect:Landroid/graphics/Rect;

    .line 118
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mColor:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/16 v1, 0x32

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->X:I

    iput v2, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->Y:I

    .line 35
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    .line 81
    new-instance v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$1;-><init>(Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x64

    const/16 v1, 0x32

    const/4 v5, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->X:I

    iput v2, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->Y:I

    .line 35
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    .line 81
    new-instance v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$1;-><init>(Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWindowManager:Landroid/view/WindowManager;

    .line 50
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWidth:I

    .line 51
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mHeight:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWidth:I

    iget-object v2, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    sget v3, Lcom/android/keyguard/R$dimen;->keyguard_data_time_y:I

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 54
    iget-object v3, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->date_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 52
    add-int/2addr v2, v3

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mRect:Landroid/graphics/Rect;

    .line 45
    return-void
.end method


# virtual methods
.method public final getBright(FFFF)F
    .locals 12
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 131
    iget-object v10, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 132
    .local v6, "x0":I
    iget-object v10, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, p3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 133
    .local v7, "x1":I
    iget-object v10, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    const/4 v11, 0x0

    aget-object v10, v10, v11

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 134
    .local v8, "y0":I
    iget-object v10, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    const/4 v11, 0x0

    aget-object v10, v10, v11

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float v10, v10, p4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 135
    .local v9, "y1":I
    if-ge v6, v7, :cond_0

    if-lt v8, v9, :cond_1

    .line 136
    :cond_0
    const/high16 v10, -0x40800000    # -1.0f

    return v10

    .line 138
    :cond_1
    const/4 v3, 0x0

    .line 139
    .local v3, "number":F
    const/4 v0, 0x0

    .line 141
    .local v0, "bright":F
    move v1, v6

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    const/16 v10, 0x32

    if-ge v1, v10, :cond_4

    .line 142
    move v2, v8

    .local v2, "j":I
    :goto_1
    if-ge v2, v9, :cond_3

    const/16 v10, 0x64

    if-ge v2, v10, :cond_3

    .line 143
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v3, v10

    .line 144
    iget-object v10, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    aget-object v10, v10, v1

    aget v10, v10, v2

    int-to-double v4, v10

    .line 145
    .local v4, "localTemp":D
    const-wide v10, 0x406a400000000000L    # 210.0

    cmpl-double v10, v4, v10

    if-lez v10, :cond_2

    .line 146
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v0, v10

    .line 142
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .end local v4    # "localTemp":D
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "j":I
    :cond_4
    div-float v10, v0, v3

    return v10
.end method

.method public getTimeBrightProp()F
    .locals 5

    .prologue
    .line 122
    sget-object v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 123
    sget-object v2, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 122
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->getBright(FFFF)F

    move-result v0

    return v0
.end method

.method public onLockMusicChanged(ZII)V
    .locals 1
    .param p1, "isLight"    # Z
    .param p2, "color"    # I
    .param p3, "bitmapBright"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onMusicStateChanged(IZI)V

    .line 107
    return-void
.end method

.method public onLockWallPaperChanged(ZII)V
    .locals 1
    .param p1, "isLight"    # Z
    .param p2, "bitmapBright"    # I
    .param p3, "color"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockWallPaperChanged(ZII)V

    .line 103
    return-void
.end method

.method public final register()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public updateWallpaperColorBroadcast(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metaBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/LockWorkRunnable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/LockWorkRunnable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->isAlive:Z

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0, p2}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$2;-><init>(Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Landroid/content/Context;Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mWorkRunnable:Lcom/meizu/keyguard/auto_color/LockWorkRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method
