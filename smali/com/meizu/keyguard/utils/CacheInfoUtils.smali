.class public Lcom/meizu/keyguard/utils/CacheInfoUtils;
.super Ljava/lang/Object;
.source "CacheInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/utils/CacheInfoUtils$UserIdReceiver;
    }
.end annotation


# instance fields
.field private mCurrentUserId:I


# direct methods
.method static synthetic -set0(Lcom/meizu/keyguard/utils/CacheInfoUtils;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/utils/CacheInfoUtils;->mCurrentUserId:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/keyguard/utils/CacheInfoUtils;->mCurrentUserId:I

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/meizu/keyguard/utils/CacheInfoUtils$UserIdReceiver;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/utils/CacheInfoUtils$UserIdReceiver;-><init>(Lcom/meizu/keyguard/utils/CacheInfoUtils;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/meizu/keyguard/utils/CacheInfoUtils;->mCurrentUserId:I

    .line 19
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/meizu/keyguard/utils/CacheInfoUtils;->mCurrentUserId:I

    return v0
.end method
