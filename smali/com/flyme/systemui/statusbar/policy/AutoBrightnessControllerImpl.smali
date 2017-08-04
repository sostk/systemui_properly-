.class public final Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;
.super Ljava/lang/Object;
.source "AutoBrightnessControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;
    }
.end annotation


# instance fields
.field private mAutoBrightnessObserver:Landroid/database/ContentObserver;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsAutoBrightnessOn:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mIsAutoBrightnessOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    .line 42
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->setListening(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->initAutoBrightness()V

    .line 41
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 89
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    .line 90
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V

    goto :goto_0

    .line 88
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->isAutoBrightnessOn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;->onAutoBrightnessChanged(Z)V

    .line 94
    return-void
.end method


# virtual methods
.method public addAutoBrightnessControllerCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V

    .line 55
    return-void
.end method

.method public initAutoBrightness()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 50
    const-string/jumbo v2, "screen_brightness_mode"

    .line 51
    const/4 v3, -0x2

    .line 49
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mIsAutoBrightnessOn:Z

    .line 48
    return-void
.end method

.method public isAutoBrightnessOn()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mIsAutoBrightnessOn:Z

    return v0
.end method

.method public removeAutoBrightnessControllerCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public setAutoBrightnessOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 72
    const-string/jumbo v0, "AutoBrightnessControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoBrightnessOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 74
    const-string/jumbo v2, "screen_brightness_mode"

    .line 75
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    .line 73
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    .local v0, "autoBrightnessUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    .end local v0    # "autoBrightnessUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
