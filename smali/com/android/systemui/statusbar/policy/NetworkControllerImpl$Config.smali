.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field alwaysShowCdmaRssi:Z

.field hspaDataDistinguishable:Z

.field hspapDataDistinguishable:Z

.field show4gForLte:Z

.field showAtLeast3G:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2187
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 2188
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 2189
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 2186
    return-void
.end method

.method static readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2195
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;-><init>()V

    .line 2196
    .local v0, "config":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2198
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 2200
    const v2, 0x1120071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2199
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 2201
    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 2203
    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2202
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    .line 2205
    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspapDataDistinguishable:Z

    .line 2207
    return-object v0
.end method
