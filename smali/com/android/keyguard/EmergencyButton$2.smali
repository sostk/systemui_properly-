.class Lcom/android/keyguard/EmergencyButton$2;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 222
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    iget-object v2, v2, Lcom/android/keyguard/EmergencyButton;->mOriginScale:[F

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    iget-object v2, v2, Lcom/android/keyguard/EmergencyButton;->mOriginScale:[F

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 225
    :cond_0
    const-string/jumbo v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset window animation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    iget-object v4, v4, Lcom/android/keyguard/EmergencyButton;->mOriginScale:[F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    :goto_0
    iput-object v5, v2, Lcom/android/keyguard/EmergencyButton;->mOriginScale:[F

    .line 219
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 229
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    iput-object v5, v3, Lcom/android/keyguard/EmergencyButton;->mOriginScale:[F

    .line 228
    throw v2
.end method
