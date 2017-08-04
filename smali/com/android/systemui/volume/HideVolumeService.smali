.class public Lcom/android/systemui/volume/HideVolumeService;
.super Landroid/app/IntentService;
.source "HideVolumeService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "HideVolumeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->volumeUI:Lcom/android/systemui/volume/VolumeUI;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->volumeUI:Lcom/android/systemui/volume/VolumeUI;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI;->dismiss()V

    .line 19
    :cond_0
    return-void
.end method
