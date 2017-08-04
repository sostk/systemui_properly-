.class public Lcom/meizu/media/music/KeyguardMusicController;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;,
        Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;,
        Lcom/meizu/media/music/KeyguardMusicController$Metadata;,
        Lcom/meizu/media/music/KeyguardMusicController$1;,
        Lcom/meizu/media/music/KeyguardMusicController$2;,
        Lcom/meizu/media/music/KeyguardMusicController$3;,
        Lcom/meizu/media/music/KeyguardMusicController$4;,
        Lcom/meizu/media/music/KeyguardMusicController$5;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/media/music/KeyguardMusicController;


# instance fields
.field public final CMDNAME:Ljava/lang/String;

.field public final COMMAND_ACTION:Ljava/lang/String;

.field private final HOMEKEY_DELAY_TIME:I

.field private final INTERNAL_CHECK_CONTROLLER_TIMEOUT:I

.field private final INTERNAL_START_MUSIC_TIMEOUT:I

.field private final MSG_CLIENT_CHANGE:I

.field private final MSG_CLIENT_METADATA_UPDATE:I

.field private final MSG_CLIENT_PLAYBACK_STATE_UPDATE:I

.field private final MSG_CLIENT_PLAYBACK_STATE_UPDATE_WITH_DETAILS:I

.field private final MSG_CLIENT_TRANSPORT_CONTROL_UPDATE:I

.field private final MSG_DELAY:I

.field private final MSG_REGISTER_CONTROLLER:I

.field private final MSG_STATR_MUSIC_TIMEOUT:I

.field private final MUSIC_UNKOWN_INFO:Ljava/lang/String;

.field private final PKG_MEIZU_MUSIC:Ljava/lang/String;

.field public final SERVICECMD:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBindSupportService:Z

.field private mBlackList:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentLyric:Ljava/lang/String;

.field private mCurrentPlayState:I

.field private mCurrentPosition:J

.field private mCurrentSpeed:F

.field private mForceShowMusic:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCollected:Z

.field private mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

.field private mKeyguardShow:Z

.field private mLastDoubleHomeKeyTime:J

.field private mLastHomeKeyEventTime:J

.field private mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

.field private mMusicControlChangCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicListener:Landroid/os/HandlerThread;

.field private mMusicListenerHandler:Landroid/os/Handler;

.field private mMusicVersion:I

.field private mMusicWidgetShowTime:J

.field private mPM:Landroid/os/PowerManager;

.field private mPlayMode:I

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRegisterRemoteControl:Z

.field private mRemoteController:Landroid/media/RemoteController;

.field mSendHomeKeyMsg:Ljava/lang/Runnable;

.field private final mSupportConnection:Landroid/content/ServiceConnection;

.field private final mSupportListener:Lcom/meizu/media/music/support/IMusicSupportListener$Stub;

.field private mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

.field private final mSupportServiceIntent:Landroid/content/Intent;

.field private mTransportControlFlags:I


# direct methods
.method static synthetic -get0(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/media/music/KeyguardMusicController;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic -get10(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportListener$Stub;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportListener:Lcom/meizu/media/music/support/IMusicSupportListener$Stub;

    return-object v0
.end method

.method static synthetic -get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/media/music/KeyguardMusicController;)J
    .locals 2

    iget-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/meizu/media/music/KeyguardMusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mIsCollected:Z

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/meizu/media/music/KeyguardMusicController;)J
    .locals 2

    iget-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mLastDoubleHomeKeyTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicController$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    return-object v0
.end method

.method static synthetic -get7(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/meizu/media/music/KeyguardMusicController;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPlayMode:I

    return v0
.end method

.method static synthetic -get9(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/media/RemoteController;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/media/music/KeyguardMusicController;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/media/music/KeyguardMusicController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/meizu/media/music/KeyguardMusicController;F)F
    .locals 0

    iput p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentSpeed:F

    return p1
.end method

.method static synthetic -set3(Lcom/meizu/media/music/KeyguardMusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mIsCollected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/meizu/media/music/KeyguardMusicController;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPlayMode:I

    return p1
.end method

.method static synthetic -set5(Lcom/meizu/media/music/KeyguardMusicController;Lcom/meizu/media/music/support/IMusicSupportService;)Lcom/meizu/media/music/support/IMusicSupportService;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/meizu/media/music/KeyguardMusicController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->musicShowSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->bindMusicSupportService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->unbindMusicSupportService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/meizu/media/music/KeyguardMusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->unregisterRemoteControlDisplay()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/meizu/media/music/KeyguardMusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->updateMusicCollectionAndPlaymode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/media/music/KeyguardMusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->getLrcContent()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/media/music/KeyguardMusicController;Z)V
    .locals 0
    .param p1, "clearing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->handleClientChange(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/media/music/KeyguardMusicController;Landroid/media/RemoteController$MetadataEditor;)V
    .locals 0
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->handleClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/media/music/KeyguardMusicController;IIII)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # I
    .param p3, "currentPosMs"    # I
    .param p4, "speed"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/media/music/KeyguardMusicController;->handleClientPlaybackStateUpdateWithDetails(IIII)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/meizu/media/music/KeyguardMusicController;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->handleClientPlaybackStateUpdate(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/meizu/media/music/KeyguardMusicController;I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->handleClientTransportControlUpdate(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/meizu/media/music/KeyguardMusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->handleHomeKeyClick()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/meizu/media/music/KeyguardMusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->registerRemoteControlDisplay()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "KeyguardMusicController"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->TAG:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "command"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->CMDNAME:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "com.android.music.COMMAND"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->SERVICECMD:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "com.android.music.COMMAND"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->COMMAND_ACTION:Ljava/lang/String;

    .line 57
    const/16 v0, 0x1388

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->INTERNAL_START_MUSIC_TIMEOUT:I

    .line 58
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->INTERNAL_CHECK_CONTROLLER_TIMEOUT:I

    .line 59
    const/16 v0, 0x96

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_DELAY:I

    .line 60
    iput v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_STATR_MUSIC_TIMEOUT:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_CLIENT_CHANGE:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_CLIENT_PLAYBACK_STATE_UPDATE:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_CLIENT_PLAYBACK_STATE_UPDATE_WITH_DETAILS:I

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_CLIENT_TRANSPORT_CONTROL_UPDATE:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_CLIENT_METADATA_UPDATE:I

    .line 66
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MSG_REGISTER_CONTROLLER:I

    .line 68
    iput-wide v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mLastHomeKeyEventTime:J

    .line 69
    iput-wide v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mLastDoubleHomeKeyTime:J

    .line 70
    const/16 v0, 0x12c

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->HOMEKEY_DELAY_TIME:I

    .line 74
    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBindSupportService:Z

    .line 76
    new-instance v0, Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "com.meizu.media.music.support.MusicSupportService"

    .line 76
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportServiceIntent:Landroid/content/Intent;

    .line 78
    const-string/jumbo v0, "com.meizu.media.music"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->PKG_MEIZU_MUSIC:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardShow:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentLyric:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "<unknown>"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->MUSIC_UNKOWN_INFO:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/music/KeyguardMusicController$1;-><init>(Lcom/meizu/media/music/KeyguardMusicController;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSendHomeKeyMsg:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController$2;

    invoke-direct {v0, p0}, Lcom/meizu/media/music/KeyguardMusicController$2;-><init>(Lcom/meizu/media/music/KeyguardMusicController;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportConnection:Landroid/content/ServiceConnection;

    .line 159
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController$3;

    invoke-direct {v0, p0}, Lcom/meizu/media/music/KeyguardMusicController$3;-><init>(Lcom/meizu/media/music/KeyguardMusicController;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportListener:Lcom/meizu/media/music/support/IMusicSupportListener$Stub;

    .line 211
    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mForceShowMusic:Z

    .line 217
    iput v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    .line 224
    iput-wide v6, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicWidgetShowTime:J

    .line 226
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    invoke-direct {v0}, Lcom/meizu/media/music/KeyguardMusicController$Metadata;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    .line 228
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    .line 232
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicControlChangCallbacks:Ljava/util/ArrayList;

    .line 234
    iput-wide v6, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    .line 235
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentSpeed:F

    .line 566
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController$4;

    invoke-direct {v0, p0}, Lcom/meizu/media/music/KeyguardMusicController$4;-><init>(Lcom/meizu/media/music/KeyguardMusicController;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    .line 610
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController$5;

    invoke-direct {v0, p0}, Lcom/meizu/media/music/KeyguardMusicController$5;-><init>(Lcom/meizu/media/music/KeyguardMusicController;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 262
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    .line 263
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    .line 264
    const-string/jumbo v1, "audio"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    .line 265
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPM:Landroid/os/PowerManager;

    .line 266
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$array;->music_black_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBlackList:[Ljava/lang/String;

    .line 268
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CheckMusicListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicListener:Landroid/os/HandlerThread;

    .line 269
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 271
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController$6;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicListener:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/music/KeyguardMusicController$6;-><init>(Lcom/meizu/media/music/KeyguardMusicController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicListenerHandler:Landroid/os/Handler;

    .line 302
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->updateMusicVersion()I

    move-result v0

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicVersion:I

    .line 261
    return-void
.end method

.method private bindMusicSupportService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBindSupportService:Z

    if-nez v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.media.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportConnection:Landroid/content/ServiceConnection;

    .line 869
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v3, 0x1

    .line 867
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBindSupportService:Z

    .line 871
    :cond_0
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindMusicSupportService mBindSupportService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 872
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBindSupportService:Z

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    sget-object v0, Lcom/meizu/media/music/KeyguardMusicController;->sInstance:Lcom/meizu/media/music/KeyguardMusicController;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {v0, p0}, Lcom/meizu/media/music/KeyguardMusicController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/media/music/KeyguardMusicController;->sInstance:Lcom/meizu/media/music/KeyguardMusicController;

    .line 201
    :cond_0
    sget-object v0, Lcom/meizu/media/music/KeyguardMusicController;->sInstance:Lcom/meizu/media/music/KeyguardMusicController;

    return-object v0
.end method

.method private getLrcContent()V
    .locals 5

    .prologue
    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    invoke-interface {v2}, Lcom/meizu/media/music/support/IMusicSupportService;->getLrcContent()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentLyric:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentLyric:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v0    # "content":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentLyric:Ljava/lang/String;

    .line 185
    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicController;->handleLyricChanged(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v2, "KeyguardMusicController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLyricChanged lrc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleClientChange(Z)V
    .locals 2
    .param p1, "clearing"    # Z

    .prologue
    .line 474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-interface {v1, p1}, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;->onClientChange(Z)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method private handleClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 7
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    const/4 v6, 0x0

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    .line 506
    const-string/jumbo v3, ""

    const/16 v4, 0xd

    .line 505
    invoke-virtual {p1, v4, v3}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    .line 507
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    .line 509
    const-string/jumbo v3, ""

    .line 508
    const/4 v4, 0x7

    .line 507
    invoke-virtual {p1, v4, v3}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    .line 510
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    .line 512
    const-string/jumbo v3, ""

    .line 511
    const/4 v4, 0x1

    .line 510
    invoke-virtual {p1, v4, v3}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    .line 513
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    .line 514
    const-wide/16 v4, -0x1

    const/16 v3, 0x9

    .line 513
    invoke-virtual {p1, v3, v4, v5}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->duration:J

    .line 515
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    .line 516
    const/16 v3, 0x64

    .line 515
    invoke-virtual {p1, v3, v6}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->bitmap:Landroid/graphics/Bitmap;

    .line 517
    const-string/jumbo v2, "KeyguardMusicController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClientMetadataUpdate Metadata.trackTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 518
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v4, v4, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    .line 517
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 518
    const-string/jumbo v4, ", bitmap = "

    .line 517
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 518
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v4, v4, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->bitmap:Landroid/graphics/Bitmap;

    .line 517
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v2, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 521
    const-string/jumbo v2, "KeyguardMusicController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bitmap with = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v4, v4, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 522
    const-string/jumbo v4, ", height = "

    .line 521
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 522
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v4, v4, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 521
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v2, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    const-string/jumbo v3, "MEIZU Music"

    iput-object v3, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v2, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_2
    const-string/jumbo v2, "<unknown>"

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v3, v3, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 534
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->unknown_artist:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v2, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 541
    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_4
    const-string/jumbo v2, "<unknown>"

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v3, v3, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 544
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->unknown_albumTitle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artistAlbumTitle:Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 552
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-interface {v2, p1}, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 536
    .end local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v2, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 546
    :cond_7
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v2, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 502
    .restart local v0    # "i":I
    :cond_8
    return-void
.end method

.method private handleClientPlaybackStateUpdate(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-interface {v1, p1}, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;->onClientPlaybackStateUpdate(I)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method private handleClientPlaybackStateUpdateWithDetails(IIII)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # I
    .param p3, "currentPosMs"    # I
    .param p4, "speed"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;->onClientPlaybackStateUpdateWithDetails(IIII)V

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method private handleClientTransportControlUpdate(I)V
    .locals 2
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mTransportControlFlags:I

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-interface {v1, p1}, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;->onClientTransportControlUpdate(I)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method private handleHomeKeyClick()V
    .locals 2

    .prologue
    .line 692
    const-string/jumbo v0, "KeyguardMusicController"

    const-string/jumbo v1, "handleHomeKeyClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->userActivity()V

    .line 691
    return-void
.end method

.method private handleHomeKeyDoubleClick()V
    .locals 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->supportMusicShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    const-string/jumbo v0, "KeyguardMusicController"

    const-string/jumbo v1, "handleHomeKeyDoubleClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 705
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMusic ControlClientPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->clear()V

    .line 708
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 709
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->startMusic()V

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->userActivity()V

    .line 699
    return-void

    .line 701
    :cond_2
    return-void
.end method

.method private handleLyricChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-interface {v1, p1}, Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;->onLyricChanged(Ljava/lang/String;)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    return-void
.end method

.method private isInBlackList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1020
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBlackList:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 1021
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1022
    const/4 v1, 0x1

    return v1

    .line 1020
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private musicShowSwitch()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1006
    :try_start_0
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.meizu.media.music"

    .line 1007
    const/4 v6, 0x3

    .line 1006
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1009
    .local v1, "otherAppsContext":Landroid/content/Context;
    const-string/jumbo v4, "com.meizu.media.music.flag_for_system_preferences"

    const/4 v5, 0x5

    .line 1008
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1010
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "lockscreen_music_switch"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1011
    .local v3, "show":Z
    const-string/jumbo v4, "KeyguardMusicController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show music is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    return v3

    .line 1013
    .end local v1    # "otherAppsContext":Landroid/content/Context;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "show":Z
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1016
    return v7
.end method

.method private registerRemoteControlDisplay()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 339
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRegisterRemoteControl:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Landroid/media/RemoteController;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    .line 342
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 341
    invoke-direct {v2, v3, v4}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    .line 343
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 345
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 347
    .local v0, "dim":I
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2, v5, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 349
    .end local v0    # "dim":I
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 350
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->resetCurrentPosition()V

    .line 351
    iput-boolean v5, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRegisterRemoteControl:Z

    .line 352
    const-string/jumbo v2, "KeyguardMusicController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteController,mRemoteController:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 353
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 353
    const-string/jumbo v4, ", mCurrentPosition = "

    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 354
    iget-wide v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    .line 352
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/meizu/media/music/KeyguardMusicController;->bindMusicSupportService(Landroid/content/Context;)V

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 359
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicView;->restartUpdateProgressBarIfNeeded()V

    .line 360
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->clear()V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/media/music/KeyguardMusicController;->setTrackTitleOfPackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unbindMusicSupportService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 876
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindMusicSupportService mBindSupportService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 877
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBindSupportService:Z

    .line 876
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBindSupportService:Z

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicListenerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 880
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mBindSupportService:Z

    .line 875
    :cond_0
    return-void
.end method

.method private unregisterRemoteControlDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 369
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRegisterRemoteControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 371
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterRemoteController,mRemoteController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 374
    iput-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    .line 375
    iput-boolean v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRegisterRemoteControl:Z

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->clear()V

    .line 378
    iput v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    .line 379
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicController;->unbindMusicSupportService(Landroid/content/Context;)V

    .line 368
    return-void
.end method

.method private updateMusicCollectionAndPlaymode()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    new-instance v1, Lcom/meizu/media/music/KeyguardMusicController$7;

    invoke-direct {v1, p0}, Lcom/meizu/media/music/KeyguardMusicController$7;-><init>(Lcom/meizu/media/music/KeyguardMusicController;)V

    invoke-static {v0, v1}, Lcom/meizu/keyguard/utils/AsyncTaskUtils;->updateMusicState(Lcom/meizu/media/music/support/IMusicSupportService;Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;)V

    .line 1028
    return-void
.end method


# virtual methods
.method public getArtistAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v0, v0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artistAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtworkBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v0, v0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentLyric:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlatState()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 845
    iget-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    return-wide v0
.end method

.method public getCurrentSpeed()F
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentSpeed:F

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-wide v0, v0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->duration:J

    return-wide v0
.end method

.method public getMusicVersion()I
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicVersion:I

    return v0
.end method

.method public getPlayMode()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPlayMode:I

    return v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v0, v0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleKeyguardMusicVieWVisibilityChange(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 831
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicControlChangCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicControlChangCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    invoke-interface {v1, p1}, Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;->onMusicVisibleChanged(Z)V

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_0
    return-void
.end method

.method public interceptHomeKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v4, 0x12c

    .line 716
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptHomeKey code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 718
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSendHomeKeyMsg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mLastHomeKeyEventTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 721
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->handleHomeKeyDoubleClick()V

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mLastDoubleHomeKeyTime:J

    .line 726
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mLastHomeKeyEventTime:J

    .line 728
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSendHomeKeyMsg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mIsCollected:Z

    return v0
.end method

.method public isMeizuMusic()Z
    .locals 4

    .prologue
    .line 897
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "remoteClientPackage":Ljava/lang/String;
    const-string/jumbo v1, "KeyguardMusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMeizuMusic remoteClientPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string/jumbo v1, "com.meizu.media.music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 905
    .end local v0    # "remoteClientPackage":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isMusicPlaying()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 423
    const-string/jumbo v1, "KeyguardMusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMusicPlaying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 425
    iget v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPlayState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 424
    :cond_1
    return v0
.end method

.method public isMusicViewShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 919
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onGoToKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 775
    const-string/jumbo v0, "KeyguardMusicController"

    const-string/jumbo v1, "onGoToKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardShow:Z

    .line 777
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0, v2}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->onGoToKeyguard()V

    .line 774
    :cond_1
    return-void
.end method

.method public onGoToLockedShade()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 766
    const-string/jumbo v0, "KeyguardMusicController"

    const-string/jumbo v1, "onGoToLockedShade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardShow:Z

    .line 768
    invoke-virtual {p0, v2}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 769
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->onGoToLockedShade()V

    .line 765
    :cond_0
    return-void
.end method

.method public onHideKeyguard(Z)V
    .locals 4
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    const/4 v3, 0x0

    .line 754
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHideKeyguard keyguardFadingAway "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iput-boolean v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardShow:Z

    .line 756
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {p0, v3}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->onHideKeyguard(Z)V

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->unregisterRemoteControlDisplay()V

    .line 753
    return-void
.end method

.method public onNotificationChange(Z)V
    .locals 1
    .param p1, "hasNotification"    # Z

    .prologue
    .line 913
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->onNotificationChange(Z)V

    .line 912
    :cond_0
    return-void
.end method

.method public onShowKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 738
    const-string/jumbo v0, "KeyguardMusicController"

    const-string/jumbo v1, "onShowKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    return-void

    .line 742
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardShow:Z

    .line 743
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->registerRemoteControlDisplay()V

    .line 744
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->checkLyricOnShowKeyguardShow()V

    .line 747
    invoke-virtual {p0, v2}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->onShowKeyguard()V

    .line 737
    :cond_2
    return-void
.end method

.method public playPositionForwardByStep()V
    .locals 3

    .prologue
    .line 853
    iget-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    long-to-float v0, v0

    iget v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentSpeed:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    .line 852
    return-void
.end method

.method public registerMusicInfoCallback(Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    const-string/jumbo v0, "KeyguardMusicController"

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerMusicInfoCallback size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 312
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerMusicViewChange(Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;)V
    .locals 2
    .param p1, "callback"    # Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;

    .prologue
    .line 786
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicControlChangCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicControlChangCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicControlChangCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 785
    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestLyric()V
    .locals 3

    .prologue
    .line 886
    const-string/jumbo v1, "KeyguardMusicController"

    const-string/jumbo v2, "requestLyric ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    if-eqz v1, :cond_0

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    invoke-interface {v1}, Lcom/meizu/media/music/support/IMusicSupportService;->requestLyric()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardMusicController"

    const-string/jumbo v2, "remove support listener fail ..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetCurrentPosition()V
    .locals 4

    .prologue
    .line 857
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    .line 859
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetCurrentPosition mCurrentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 860
    iget-wide v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    .line 859
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    return-void
.end method

.method public resetMetadata()V
    .locals 2

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 927
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mCurrentPosition:J

    .line 928
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->clear()V

    .line 929
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->unregisterRemoteControlDisplay()V

    .line 923
    return-void
.end method

.method public sendMediaButtonClick(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 412
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonClick keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 413
    const-string/jumbo v2, ", mRemoteController:"

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    .line 416
    const/4 v2, 0x0

    .line 415
    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 417
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    .line 418
    const/4 v2, 0x1

    .line 417
    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 409
    :cond_0
    return-void
.end method

.method public setCollected(Z)V
    .locals 2
    .param p1, "collect"    # Z

    .prologue
    .line 946
    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mIsCollected:Z

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    invoke-interface {v1}, Lcom/meizu/media/music/support/IMusicSupportService;->collectOrRemoveFavorite()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setKeyguardMusicView(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0
    .param p1, "musicView"    # Lcom/meizu/media/music/KeyguardMusicView;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 204
    return-void
.end method

.method public setKeyguardMusicViewVisible(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 808
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOrHideKeyguardMusicView show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 809
    const-string/jumbo v2, ", mKeyguardMusicView = "

    .line 808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 809
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    .line 808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 810
    const-string/jumbo v2, ", mKeyguardShow = "

    .line 808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 810
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardShow:Z

    .line 808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    if-eqz v0, :cond_0

    .line 813
    if-eqz p1, :cond_1

    .line 814
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardShow:Z

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->startAlphaAmination()V

    .line 817
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0, v3}, Lcom/meizu/media/music/KeyguardMusicView;->setVisibility(I)V

    .line 818
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicController;->handleKeyguardMusicVieWVisibilityChange(Z)V

    .line 819
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectMusicViewShow(Landroid/content/Context;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mKeyguardMusicView:Lcom/meizu/media/music/KeyguardMusicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->setVisibility(I)V

    .line 824
    invoke-virtual {p0, v3}, Lcom/meizu/media/music/KeyguardMusicController;->handleKeyguardMusicVieWVisibilityChange(Z)V

    goto :goto_0
.end method

.method public setPlayMode()V
    .locals 4

    .prologue
    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    invoke-interface {v1}, Lcom/meizu/media/music/support/IMusicSupportService;->setPlayMode()V

    .line 964
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mSupportService:Lcom/meizu/media/music/support/IMusicSupportService;

    invoke-interface {v1}, Lcom/meizu/media/music/support/IMusicSupportService;->getPlayMode()I

    move-result v1

    iput v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPlayMode:I

    .line 965
    const-string/jumbo v1, "KeyguardMusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlayMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPlayMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTrackTitleOfPackageName(Ljava/lang/String;)V
    .locals 5
    .param p1, "currentPackageName"    # Ljava/lang/String;

    .prologue
    .line 934
    :try_start_0
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 935
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMetadata:Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public showOrHideKeyguardMusicView(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 800
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->supportMusicShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->setKeyguardMusicViewVisible(Z)V

    .line 799
    return-void

    .line 801
    :cond_1
    return-void
.end method

.method public startMusic()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 383
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mForceShowMusic:Z

    .line 384
    const-string/jumbo v1, "KeyguardMusicController"

    const-string/jumbo v2, "startMusic mClientIntent = "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.music.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "lock_request_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/media/music/KeyguardMusicController;->mMusicWidgetShowTime:J

    .line 391
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "MEIZU Music"

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    const-string/jumbo v1, "KeyguardMusicController"

    const-string/jumbo v2, "startMusic time out"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    .line 397
    const-wide/16 v2, 0x1388

    .line 396
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 398
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    .line 399
    const-wide/16 v2, 0x3e8

    .line 398
    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    :cond_1
    return-void
.end method

.method public supportMusicShow()Z
    .locals 2

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicController;->musicShowSwitch()Z

    move-result v1

    return v1

    .line 992
    :cond_0
    const-string/jumbo v0, ""

    .line 993
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v0

    .line 996
    :cond_1
    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicController;->isInBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 997
    const/4 v1, 0x0

    return v1

    .line 999
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public updateMusicVersion()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 978
    :try_start_0
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.meizu.media.music"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 979
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 980
    .local v2, "versionCode":I
    const-string/jumbo v3, "KeyguardMusicController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    return v2

    .line 982
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "versionCode":I
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "KeyguardMusicController"

    const-string/jumbo v4, "Do not get music info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return v6
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 731
    :cond_0
    return-void
.end method
