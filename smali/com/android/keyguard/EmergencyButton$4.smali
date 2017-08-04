.class Lcom/android/keyguard/EmergencyButton$4;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V
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
    .line 115
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 117
    return-void
.end method
