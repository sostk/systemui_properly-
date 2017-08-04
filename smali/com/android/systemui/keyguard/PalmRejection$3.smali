.class Lcom/android/systemui/keyguard/PalmRejection$3;
.super Ljava/lang/Object;
.source "PalmRejection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/PalmRejection;->addView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/PalmRejection;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/PalmRejection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/PalmRejection;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/keyguard/PalmRejection$3;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    :try_start_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/systemui/keyguard/PalmRejection$3;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-static {v4}, Lcom/android/systemui/keyguard/PalmRejection;->-get1(Lcom/android/systemui/keyguard/PalmRejection;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 148
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v4, p0, Lcom/android/systemui/keyguard/PalmRejection$3;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-static {v4}, Lcom/android/systemui/keyguard/PalmRejection;->-get1(Lcom/android/systemui/keyguard/PalmRejection;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 149
    .local v3, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    :cond_0
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v4

    .line 149
    if-eqz v4, :cond_2

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/PalmRejection$3;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/PalmRejection;->removeView()V

    .line 155
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, ":settings:fragment_args_key"

    const-string/jumbo v5, "sensor_adjust_proximity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v4, p0, Lcom/android/systemui/keyguard/PalmRejection$3;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-static {v4}, Lcom/android/systemui/keyguard/PalmRejection;->-get0(Lcom/android/systemui/keyguard/PalmRejection;)Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method
