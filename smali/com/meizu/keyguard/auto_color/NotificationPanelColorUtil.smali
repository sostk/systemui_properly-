.class public Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;
.super Ljava/lang/Object;
.source "NotificationPanelColorUtil.java"


# static fields
.field private static sInstance:Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;


# instance fields
.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 17
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->sInstance:Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->sInstance:Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;

    .line 24
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->sInstance:Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;

    return-object v0
.end method


# virtual methods
.method public updateColors()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockBlurChanged()V

    .line 27
    return-void
.end method
