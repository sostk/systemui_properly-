.class public abstract Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const/high16 v1, 0x800000

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    sput-object v0, Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(I)Landroid/content/Intent;
    .locals 5
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v4, 0x2

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string/jumbo v2, "customSort"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string/jumbo v2, "categoryFilter"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "options":Landroid/os/Bundle;
    const-string/jumbo v2, "appWidgetCategory"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string/jumbo v2, "appWidgetOptions"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    return-object v1
.end method
