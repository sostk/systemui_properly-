.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeUI$VolumeController;,
        Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;,
        Lcom/android/systemui/volume/VolumeUI$1;
    }
.end annotation


# static fields
.field private static final SETTING_URI:Landroid/net/Uri;

.field public static volumeUI:Lcom/android/systemui/volume/VolumeUI;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDismissDelay:I

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPanel:Lcom/android/systemui/volume/VolumePanel;

.field private mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

.field private mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "systemui_volume_controller"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$1;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$1;-><init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    .line 48
    return-void
.end method

.method private initPanel()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I

    .line 114
    new-instance v0, Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    .line 112
    return-void
.end method

.method private updateController()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    .line 101
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    .line 95
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 68
    sput-object p0, Lcom/android/systemui/volume/VolumeUI;->volumeUI:Lcom/android/systemui/volume/VolumeUI;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 71
    const-string/jumbo v1, "media_session"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->initPanel()V

    .line 73
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$VolumeController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    .line 74
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    .line 75
    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    return-void
.end method
