.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 600
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 601
    if-eqz v1, :cond_1

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 599
    :cond_1
    return-void
.end method
