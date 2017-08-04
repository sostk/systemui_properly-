.class public Lcom/meizu/media/music/KeyguardMusicView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMusicView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;,
        Lcom/meizu/media/music/KeyguardMusicView$SavedState;,
        Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;,
        Lcom/meizu/media/music/KeyguardMusicView$1;,
        Lcom/meizu/media/music/KeyguardMusicView$2;,
        Lcom/meizu/media/music/KeyguardMusicView$3;,
        Lcom/meizu/media/music/KeyguardMusicView$4;,
        Lcom/meizu/media/music/KeyguardMusicView$5;,
        Lcom/meizu/media/music/KeyguardMusicView$6;,
        Lcom/meizu/media/music/KeyguardMusicView$7;,
        Lcom/meizu/media/music/KeyguardMusicView$8;,
        Lcom/meizu/media/music/KeyguardMusicView$9;
    }
.end annotation


# instance fields
.field private final ACTION_LYRIC_LOADED:Ljava/lang/String;

.field private final ACTION_REQUEST_LOAD_LYRIC:Ljava/lang/String;

.field private final ADD_FOOT_VIEWS:I

.field private final DEFAULT_TRANSPORT_CONTROL_FLAGS:I

.field private final EXTRA_LYRIC_DETAILS_ONLINE:Ljava/lang/String;

.field private final EXTRA_LYRIC_TITLE_ONLINE:Ljava/lang/String;

.field private final EXTRA_LYRIC_TYPE_ONLINE:Ljava/lang/String;

.field private final FOOT_VIEW_COUNT:I

.field private final HIGHT_LIGHT_ALPHA:F

.field private final LIST_VIEW_FADING_LENGTH:I

.field private final LRCCONTENT_INFO_COUNT:I

.field private final MEIZU_LRC_LOCAL_PREFIX:Ljava/lang/String;

.field private final MEIZU_LRC_LOCAL_PREFIX_LENGTH:I

.field private final MIDDLE_INDEX:I

.field private final MSG_FAST_SCROLL:I

.field private final MSG_LYRIC_LOADED:I

.field private final MSG_SMONTH_SCROLL:I

.field private final NORMAL_LIGHT_ALPHA:F

.field private final PROGRESS_BAR_UPDATE_INTERVAL:I

.field private final QUICK_SCROLL_DURATION_TIME:I

.field private final REMOVE_FOOT_VIEWS:I

.field private final REQUEST_LOAD_LYRIC_DELAY:I

.field private final SMOOTH_SCROLL_DURATION_TIME:I

.field private final VERY_FAST_SCROLL_DURATION_TIME:I

.field private mArtistAlbumTitleText:Ljava/lang/String;

.field private mArtwork:Landroid/widget/ImageView;

.field private mArtworkAndLrclist:Landroid/widget/RelativeLayout;

.field private mArtworkBack:Landroid/widget/ImageView;

.field private mArtworkContent:Landroid/widget/FrameLayout;

.field private mArtworkFront:Landroid/widget/ImageView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtnCollection:Landroid/widget/ImageView;

.field private mBtnLoop:Landroid/widget/ImageView;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mFastClick:Z

.field private mFocusMarqueeText:Lcom/meizu/media/music/MarqueeTextView;

.field private mFootViews:[Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHasNotification:Z

.field private mIgoreOnceMetadata:Z

.field private mIsPrevNextShow:Z

.field private mItemHeight:I

.field private mKeyguardLyricEnabled:Z

.field private mLastIndex:I

.field private mLastTapSong:J

.field private mLrcContent:Lcom/meizu/media/music/support/LrcContent;

.field private mLrcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLrcListView:Landroid/widget/ListView;

.field private mLyricAdapter:Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;

.field private mLyricViewListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMetadataChange:Z

.field private final mMetadataChangeTransition:Landroid/transition/TransitionSet;

.field private mMoveDistance:F

.field private mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

.field private mMusicInfoCallback:Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

.field private mMusicMask:Landroid/widget/ImageView;

.field private mNextMusicInAnimation:Ljava/lang/Runnable;

.field private mNextMusicOutAnimation:Ljava/lang/Runnable;

.field private mPlayNextSong:Z

.field private mPlayPrevSong:Z

.field private mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

.field private mPrevMusicInAnimation:Ljava/lang/Runnable;

.field private mPrevMusicOutAnimation:Ljava/lang/Runnable;

.field private mProgressBar:Lcom/meizu/widget/CircleProgressBar;

.field private mProgressBarEnabled:Z

.field private final mRequestLoadLyricIntent:Landroid/content/Intent;

.field private mSetArtworkBitmap:Ljava/lang/Runnable;

.field private mShowKeyguardFristTime:Z

.field private mTrackArtistAlbum:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTrackTitleText:Ljava/lang/String;

.field private mTransitioner:Landroid/animation/LayoutTransition;

.field private final mTransportCommandListener:Landroid/view/View$OnClickListener;

.field private mTransportControlFlags:I

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateProgressBar:Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;


# direct methods
.method static synthetic -get0(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtwork:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get10(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/MarqueeTextView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFocusMarqueeText:Lcom/meizu/media/music/MarqueeTextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/meizu/media/music/KeyguardMusicView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mIgoreOnceMetadata:Z

    return v0
.end method

.method static synthetic -get13(Lcom/meizu/media/music/KeyguardMusicView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mItemHeight:I

    return v0
.end method

.method static synthetic -get14(Lcom/meizu/media/music/KeyguardMusicView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get15(Lcom/meizu/media/music/KeyguardMusicView;)F
    .locals 1

    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMoveDistance:F

    return v0
.end method

.method static synthetic -get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    return-object v0
.end method

.method static synthetic -get17(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get18(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/widget/CircleProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    return-object v0
.end method

.method static synthetic -get19(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get20(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateProgressBar:Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnCollection:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPrev:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/media/music/KeyguardMusicView;Lcom/meizu/media/music/MarqueeTextView;)Lcom/meizu/media/music/MarqueeTextView;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFocusMarqueeText:Lcom/meizu/media/music/MarqueeTextView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/meizu/media/music/KeyguardMusicView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mIgoreOnceMetadata:Z

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/media/music/KeyguardMusicView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMetadataChange:Z

    return p1
.end method

.method static synthetic -set3(Lcom/meizu/media/music/KeyguardMusicView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayNextSong:Z

    return p1
.end method

.method static synthetic -set4(Lcom/meizu/media/music/KeyguardMusicView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayPrevSong:Z

    return p1
.end method

.method static synthetic -set5(Lcom/meizu/media/music/KeyguardMusicView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTransportControlFlags:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/media/music/KeyguardMusicView;Landroid/graphics/Typeface;)Z
    .locals 1
    .param p1, "curTypeface"    # Landroid/graphics/Typeface;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->isSystemTypeface(Landroid/graphics/Typeface;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/media/music/KeyguardMusicView;I)Z
    .locals 1
    .param p1, "playstate"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->playbackPositionShouldMove(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/meizu/media/music/KeyguardMusicView;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->setLyricEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/meizu/media/music/KeyguardMusicView;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->checkFastClick()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->nextMusicInAnimation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->nextMusicOutAnimation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->prevMusicInAnimation()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->prevMusicOutAnimation()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->reset()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->setAllArtworkBitmap()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/meizu/media/music/KeyguardMusicView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->setArtworkBitmap(Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBarEnabled:Z

    .line 99
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcList:Ljava/util/ArrayList;

    .line 100
    const/4 v7, -0x1

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    .line 101
    const/4 v7, 0x0

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mItemHeight:I

    .line 103
    const/4 v7, 0x0

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->MSG_FAST_SCROLL:I

    .line 104
    const/4 v7, 0x1

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->MSG_SMONTH_SCROLL:I

    .line 105
    const/4 v7, 0x2

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->MSG_LYRIC_LOADED:I

    .line 107
    const/16 v7, 0x514

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->SMOOTH_SCROLL_DURATION_TIME:I

    .line 108
    const/16 v7, 0x320

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->QUICK_SCROLL_DURATION_TIME:I

    .line 109
    const/16 v7, 0x1f4

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->VERY_FAST_SCROLL_DURATION_TIME:I

    .line 110
    const/4 v7, 0x4

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->LRCCONTENT_INFO_COUNT:I

    .line 111
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->HIGHT_LIGHT_ALPHA:F

    .line 112
    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->NORMAL_LIGHT_ALPHA:F

    .line 114
    const/4 v7, 0x1

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->FOOT_VIEW_COUNT:I

    .line 115
    const/4 v7, 0x0

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->ADD_FOOT_VIEWS:I

    .line 116
    const/4 v7, 0x2

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->REMOVE_FOOT_VIEWS:I

    .line 118
    const/4 v7, 0x1

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->MIDDLE_INDEX:I

    .line 119
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/widget/TextView;

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFootViews:[Landroid/widget/TextView;

    .line 120
    const/16 v7, 0x1e

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->LIST_VIEW_FADING_LENGTH:I

    .line 121
    const/16 v7, 0x3e8

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->PROGRESS_BAR_UPDATE_INTERVAL:I

    .line 122
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 124
    const-string/jumbo v7, "meizu.keyguard.request.lyric"

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->ACTION_REQUEST_LOAD_LYRIC:Ljava/lang/String;

    .line 125
    const-string/jumbo v7, "meizu.keyguard.lyric.loaded"

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->ACTION_LYRIC_LOADED:Ljava/lang/String;

    .line 126
    const-string/jumbo v7, "extra_lyric_type_online"

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->EXTRA_LYRIC_TYPE_ONLINE:Ljava/lang/String;

    .line 127
    const-string/jumbo v7, "extra_lyric_details_online"

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->EXTRA_LYRIC_DETAILS_ONLINE:Ljava/lang/String;

    .line 128
    const-string/jumbo v7, "extra_lyric_title_online"

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->EXTRA_LYRIC_TITLE_ONLINE:Ljava/lang/String;

    .line 129
    const-string/jumbo v7, "meizu_media_music_lrc_local"

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->MEIZU_LRC_LOCAL_PREFIX:Ljava/lang/String;

    .line 130
    const-string/jumbo v7, "meizu_media_music_lrc_local"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->MEIZU_LRC_LOCAL_PREFIX_LENGTH:I

    .line 132
    const/16 v7, 0x96

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->REQUEST_LOAD_LYRIC_DELAY:I

    .line 139
    new-instance v7, Landroid/content/Intent;

    .line 140
    const-string/jumbo v8, "meizu.keyguard.request.lyric"

    .line 139
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mRequestLoadLyricIntent:Landroid/content/Intent;

    .line 141
    const/16 v7, 0xbd

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->DEFAULT_TRANSPORT_CONTROL_FLAGS:I

    .line 143
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mKeyguardLyricEnabled:Z

    .line 144
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHasNotification:Z

    .line 146
    new-instance v7, Landroid/animation/LayoutTransition;

    invoke-direct {v7}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 149
    const/16 v7, 0xbd

    iput v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTransportControlFlags:I

    .line 150
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mIsPrevNextShow:Z

    .line 155
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitleText:Ljava/lang/String;

    .line 156
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtistAlbumTitleText:Ljava/lang/String;

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastTapSong:J

    .line 172
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$1;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$1;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicInfoCallback:Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    .line 275
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;-><init>(Lcom/meizu/media/music/KeyguardMusicView;Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateProgressBar:Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    .line 277
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$2;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$2;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    .line 343
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$3;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$3;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 887
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$4;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$4;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLyricViewListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1266
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$5;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$5;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mSetArtworkBitmap:Ljava/lang/Runnable;

    .line 1273
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$6;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$6;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mNextMusicInAnimation:Ljava/lang/Runnable;

    .line 1280
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$7;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$7;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mNextMusicOutAnimation:Ljava/lang/Runnable;

    .line 1287
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$8;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$8;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPrevMusicOutAnimation:Ljava/lang/Runnable;

    .line 1294
    new-instance v7, Lcom/meizu/media/music/KeyguardMusicView$9;

    invoke-direct {v7, p0}, Lcom/meizu/media/music/KeyguardMusicView$9;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPrevMusicInAnimation:Ljava/lang/Runnable;

    .line 386
    const-string/jumbo v7, "KeyguardMusicView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Create TCV "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v7, Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mAudioManager:Landroid/media/AudioManager;

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 389
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 390
    .local v0, "dim":I
    invoke-static {p1}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    .line 391
    iget-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v7, p0}, Lcom/meizu/media/music/KeyguardMusicController;->setKeyguardMusicView(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 392
    iget-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicInfoCallback:Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;

    invoke-virtual {v7, v8}, Lcom/meizu/media/music/KeyguardMusicController;->registerMusicInfoCallback(Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;)V

    .line 393
    new-instance v4, Landroid/transition/ChangeText;

    invoke-direct {v4}, Landroid/transition/ChangeText;-><init>()V

    .line 394
    .local v4, "tc":Landroid/transition/ChangeText;
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/transition/ChangeText;->setChangeBehavior(I)Landroid/transition/ChangeText;

    .line 395
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    .line 396
    .local v3, "inner":Landroid/transition/TransitionSet;
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v7

    new-instance v8, Landroid/transition/ChangeBounds;

    invoke-direct {v8}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v7, v8}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 397
    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    .line 398
    .local v5, "tg":Landroid/transition/TransitionSet;
    new-instance v7, Landroid/transition/Fade;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v7

    .line 399
    new-instance v8, Landroid/transition/Fade;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/transition/Fade;-><init>(I)V

    .line 398
    invoke-virtual {v7, v8}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 400
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 401
    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 402
    iput-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    .line 403
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    .line 404
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_0

    .line 405
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 406
    .local v6, "tv":Landroid/widget/TextView;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 407
    iget v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mItemHeight:I

    .line 406
    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFootViews:[Landroid/widget/TextView;

    aput-object v6, v7, v2

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private checkFastClick()V
    .locals 4

    .prologue
    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastTapSong:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFastClick:Z

    .line 1263
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastTapSong:J

    .line 1257
    return-void

    .line 1261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFastClick:Z

    goto :goto_0
.end method

.method private computeTitleTextSize()I
    .locals 8

    .prologue
    .line 1194
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1195
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 1197
    .local v4, "textwidth":I
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    .line 1198
    .local v2, "textViewWidth":I
    const/16 v3, 0x16

    .line 1200
    .local v3, "textsize":I
    if-le v4, v2, :cond_0

    if-lez v2, :cond_0

    .line 1201
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x16

    div-int v3, v5, v4

    .line 1203
    :cond_0
    const-string/jumbo v5, "KeyguardMusicView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "text size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string/jumbo v5, "KeyguardMusicView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TextView width is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",text width is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",compute text size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return v3
.end method

.method private getLrcList(Lcom/meizu/media/music/support/LrcContent;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "content"    # Lcom/meizu/media/music/support/LrcContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/media/music/support/LrcContent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 992
    return-object v2

    .line 996
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 997
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/meizu/media/music/support/LrcContent;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/meizu/media/music/support/LrcContent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/music/support/LrcCell;

    invoke-virtual {v3}, Lcom/meizu/media/music/support/LrcCell;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1002
    :cond_2
    return-object v2
.end method

.method private isSystemTypeface(Landroid/graphics/Typeface;)Z
    .locals 1
    .param p1, "curTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 1233
    if-eqz p1, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_1

    .line 1236
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1234
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 1235
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 1238
    const/4 v0, 0x0

    return v0
.end method

.method private nextMusicInAnimation()V
    .locals 6

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1334
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtwork:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->setArtworkBitmap(Landroid/widget/ImageView;)V

    .line 1335
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 1336
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 1337
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1338
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1340
    const-wide/16 v2, 0x12c

    .line 1338
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1341
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v5, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1338
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1333
    return-void
.end method

.method private nextMusicOutAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1302
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1303
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMoveDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1304
    const-wide/16 v2, 0x12c

    .line 1303
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1305
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1306
    new-instance v1, Lcom/meizu/media/music/KeyguardMusicView$11;

    invoke-direct {v1, p0}, Lcom/meizu/media/music/KeyguardMusicView$11;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 1303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1301
    return-void
.end method

.method private final playbackPositionShouldMove(I)Z
    .locals 3
    .param p1, "playstate"    # I

    .prologue
    .line 323
    const-string/jumbo v0, "KeyguardMusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playbackPositionShouldMove playstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    packed-switch p1, :pswitch_data_0

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    return v0

    .line 331
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateMetadata()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 566
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getArtistAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/media/music/KeyguardMusicView;->setTrackArtistAlbumText(Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/media/music/KeyguardMusicView;->setTrackTitleText(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 570
    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->setProgressBarEnabled(Z)V

    .line 571
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/music/KeyguardMusicView;->setProgressBarDuration(J)V

    .line 575
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getDuration()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 576
    const-string/jumbo v1, "DDD kk mm ss"

    .line 583
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTransportControlFlags:I

    .line 584
    .local v0, "flags":I
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPrev:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 585
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v3, 0x80

    invoke-direct {p0, v2, v0, v3}, Lcom/meizu/media/music/KeyguardMusicView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 587
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentPlatState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/media/music/KeyguardMusicView;->updatePlayPauseState(I)V

    .line 589
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHasNotification:Z

    if-eqz v2, :cond_3

    .line 590
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->setAllArtworkBitmap()V

    .line 591
    return-void

    .line 577
    .end local v0    # "flags":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getDuration()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 578
    const-string/jumbo v1, "kk mm ss"

    .local v1, "skeleton":Ljava/lang/String;
    goto :goto_0

    .line 580
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "mm ss"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0

    .line 594
    .end local v1    # "skeleton":Ljava/lang/String;
    .restart local v0    # "flags":I
    :cond_3
    monitor-enter p0

    .line 595
    :try_start_0
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMetadataChange:Z

    if-eqz v2, :cond_4

    .line 596
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mShowKeyguardFristTime:Z

    if-eqz v2, :cond_5

    .line 597
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->setAllArtworkBitmap()V

    .line 598
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    iget v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMoveDistance:F

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 599
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mShowKeyguardFristTime:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    .line 565
    return-void

    .line 602
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mSetArtworkBitmap:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 603
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFastClick:Z

    if-eqz v2, :cond_6

    .line 605
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->setAllArtworkBitmap()V

    .line 606
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    iget v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMoveDistance:F

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 607
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFastClick:Z

    .line 609
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayPrevSong:Z

    .line 610
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayNextSong:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 594
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 612
    :cond_6
    :try_start_2
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayPrevSong:Z

    if-eqz v2, :cond_7

    .line 613
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPrevMusicOutAnimation:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPrevMusicInAnimation:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 616
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayPrevSong:Z

    goto :goto_1

    .line 617
    :cond_7
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayNextSong:Z

    if-eqz v2, :cond_8

    .line 618
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mNextMusicOutAnimation:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 620
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mNextMusicInAnimation:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mPlayNextSong:Z

    goto :goto_1

    .line 623
    :cond_8
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mSetArtworkBitmap:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private prepareLyricContent(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "onLoad"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 953
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    const-string/jumbo v2, "meizu_media_music_lrc_local"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 955
    iget v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->MEIZU_LRC_LOCAL_PREFIX_LENGTH:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/media/music/support/LrcParser;->parse(Ljava/lang/String;)Lcom/meizu/media/music/support/LrcContent;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    .line 957
    const-string/jumbo v2, "KeyguardMusicView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareLyricContent local path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 958
    const-string/jumbo v4, ", mLrcContent = "

    .line 957
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 958
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    .line 957
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iput-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    .line 973
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->hasLrcContent()Z

    move-result v2

    if-nez v2, :cond_4

    .line 974
    const-string/jumbo v2, "KeyguardMusicView"

    const-string/jumbo v3, "prepareLyricContent , can construct lrcContent "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->reset()V

    .line 976
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->hideLyricContent()V

    .line 977
    if-nez p2, :cond_2

    .line 978
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->requestLyric()V

    .line 980
    :cond_2
    return-void

    .line 962
    :cond_3
    :try_start_0
    const-string/jumbo v2, "UNICODE"

    .line 961
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/media/music/support/LrcParser;->parseContent([B)Lcom/meizu/media/music/support/LrcContent;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :goto_1
    const-string/jumbo v2, "KeyguardMusicView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareLyricContent online path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 967
    const-string/jumbo v4, ", mLrcContent = "

    .line 966
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 967
    iget-object v4, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    .line 966
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 983
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->reset()V

    .line 984
    iget-boolean v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHasNotification:Z

    invoke-virtual {p0, v2}, Lcom/meizu/media/music/KeyguardMusicView;->setLyricVisibility(Z)V

    .line 985
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLyricAdapter:Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;

    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    invoke-direct {p0, v3}, Lcom/meizu/media/music/KeyguardMusicView;->getLrcList(Lcom/meizu/media/music/support/LrcContent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->setLrcContent(Ljava/util/ArrayList;)V

    .line 986
    invoke-direct {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->removeOrAddListItems(I)V

    .line 952
    return-void
.end method

.method private prevMusicInAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1356
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtwork:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->setArtworkBitmap(Landroid/widget/ImageView;)V

    .line 1357
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMoveDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 1358
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1359
    const-wide/16 v2, 0x12c

    .line 1358
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1360
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3c23d70a    # 0.01f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1358
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1361
    new-instance v1, Lcom/meizu/media/music/KeyguardMusicView$12;

    invoke-direct {v1, p0}, Lcom/meizu/media/music/KeyguardMusicView$12;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 1358
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1355
    return-void
.end method

.method private prevMusicOutAnimation()V
    .locals 6

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1347
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1348
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1349
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1350
    const-wide/16 v2, 0x12c

    .line 1349
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1351
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1346
    return-void
.end method

.method private removeOrAddListItems(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 939
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 940
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mFootViews:[Landroid/widget/TextView;

    aget-object v0, v2, v1

    .line 941
    .local v0, "child":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 939
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 946
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1

    .line 938
    .end local v0    # "child":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 1014
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    .line 1015
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLyricAdapter:Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;->setLrcContent(Ljava/util/ArrayList;)V

    .line 1016
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->removeOrAddListItems(I)V

    .line 1013
    return-void
.end method

.method private setAllArtworkBitmap()V
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtwork:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->setArtworkBitmap(Landroid/widget/ImageView;)V

    .line 1253
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->setArtworkBitmap(Landroid/widget/ImageView;)V

    .line 1254
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->setArtworkBitmap(Landroid/widget/ImageView;)V

    .line 1251
    return-void
.end method

.method private setArtworkBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1243
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->getArtworkBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1244
    .local v0, "artwork":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->music_default_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1242
    :goto_0
    return-void

    .line 1247
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setEnableMarquee(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 431
    const-string/jumbo v1, "KeyguardMusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    const-string/jumbo v0, "Enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string/jumbo v2, " transport text marquee"

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackArtistAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_5

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 442
    :goto_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_6

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackArtistAlbum:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 429
    :goto_2
    return-void

    .line 431
    :cond_4
    const-string/jumbo v0, "Disable"

    goto :goto_0

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 443
    :cond_6
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2
.end method

.method private setLyricEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1065
    const-string/jumbo v0, "KeyguardMusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLyricEnabled enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mKeyguardLyricEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1067
    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mKeyguardLyricEnabled:Z

    .line 1068
    if-nez p1, :cond_1

    .line 1069
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->reset()V

    .line 1070
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentLyric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->prepareLyricContent(Ljava/lang/String;Z)V

    .line 1073
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHasNotification:Z

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->setLyricVisibility(Z)V

    goto :goto_0
.end method

.method private setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 1142
    and-int v0, p2, p3

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mIsPrevNextShow:Z

    .line 1141
    :goto_0
    return-void

    .line 1146
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    iput-boolean v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mIsPrevNextShow:Z

    goto :goto_0
.end method

.method private showAnimation(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1120
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1121
    const-wide/16 v2, 0x1f4

    .line 1120
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1122
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    .line 1123
    const v3, 0x10a0006

    .line 1122
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 1120
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1124
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    if-eqz p2, :cond_0

    .line 1125
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1118
    :goto_0
    return-void

    .line 1127
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1128
    new-instance v2, Lcom/meizu/media/music/KeyguardMusicView$10;

    invoke-direct {v2, p0}, Lcom/meizu/media/music/KeyguardMusicView$10;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 1127
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private supportLoopAndCollection()Z
    .locals 2

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->getMusicVersion()I

    move-result v0

    .line 1187
    .local v0, "version":I
    const/16 v1, 0x13ed

    if-lt v0, v1, :cond_0

    .line 1188
    const/4 v1, 0x1

    return v1

    .line 1190
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updatePlayPauseState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    .line 641
    const-string/jumbo v3, "KeyguardMusicView"

    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePlayPauseState(), old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 643
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v5}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentPlatState()I

    move-result v5

    .line 642
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 644
    const-string/jumbo v5, ", state="

    .line 642
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sparse-switch p1, :sswitch_data_0

    .line 671
    sget v2, Lcom/android/keyguard/R$drawable;->mz_ic_media_play:I

    .line 672
    .local v2, "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    .line 673
    .local v1, "imageDescId":I
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v3}, Lcom/meizu/media/music/KeyguardMusicController;->getArtistAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/media/music/KeyguardMusicView;->setTrackArtistAlbumText(Ljava/lang/String;)V

    .line 677
    :goto_0
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v3}, Lcom/meizu/media/music/KeyguardMusicController;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 678
    .local v0, "clientSupportsSeek":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->setProgressBarEnabled(Z)V

    .line 680
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 639
    return-void

    .line 650
    .end local v0    # "clientSupportsSeek":Z
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_0
    sget v2, Lcom/android/keyguard/R$drawable;->stat_sys_warning:I

    .line 654
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    .restart local v1    # "imageDescId":I
    goto :goto_0

    .line 658
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_1
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_pause:I

    .line 659
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_pause_description:I

    .line 660
    .restart local v1    # "imageDescId":I
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v3}, Lcom/meizu/media/music/KeyguardMusicController;->getArtistAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/media/music/KeyguardMusicView;->setTrackArtistAlbumText(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_2
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_pause:I

    .line 665
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_pause_description:I

    .line 666
    .restart local v1    # "imageDescId":I
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->playstate_buffering_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/media/music/KeyguardMusicView;->setTrackArtistAlbumText(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "clientSupportsSeek":Z
    goto :goto_1

    .line 647
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public checkLyricOnShowKeyguardShow()V
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->hasLrcContent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mKeyguardLyricEnabled:Z

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentLyric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->prepareLyricContent(Ljava/lang/String;Z)V

    .line 1023
    :cond_0
    return-void
.end method

.method clearMetadata()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->populateMetadata()V

    .line 545
    return-void
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 1229
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 868
    const-string/jumbo v3, "KeyguardMusicView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 884
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 871
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 872
    .local v0, "duration":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 873
    .local v1, "offset":I
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 876
    .end local v0    # "duration":I
    .end local v1    # "offset":I
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 877
    .local v2, "selection":I
    const-string/jumbo v3, "KeyguardMusicView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSelection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v3, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 881
    .end local v2    # "selection":I
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/meizu/media/music/KeyguardMusicView;->prepareLyricContent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hasLrcContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    invoke-virtual {v1}, Lcom/meizu/media/music/support/LrcContent;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hideLyricContent()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1019
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 514
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 516
    const-string/jumbo v0, "KeyguardMusicView"

    const-string/jumbo v1, "onAttachToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->updateMetadata()V

    .line 519
    const-string/jumbo v0, "KeyguardMusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registering TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 520
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 513
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 527
    const-string/jumbo v0, "KeyguardMusicView"

    const-string/jumbo v1, "onDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 530
    const-string/jumbo v0, "KeyguardMusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unregistering TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 531
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 533
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateProgressBar:Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 525
    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 451
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 462
    sget v6, Lcom/android/keyguard/R$id;->title:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    .line 463
    sget v6, Lcom/android/keyguard/R$id;->artist_album:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackArtistAlbum:Landroid/widget/TextView;

    .line 464
    sget v6, Lcom/android/keyguard/R$id;->btn_collection:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnCollection:Landroid/widget/ImageView;

    .line 465
    sget v6, Lcom/android/keyguard/R$id;->btn_loop:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    .line 466
    sget v6, Lcom/android/keyguard/R$id;->btn_prev:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPrev:Landroid/widget/ImageView;

    .line 467
    sget v6, Lcom/android/keyguard/R$id;->btn_play:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPlay:Landroid/widget/ImageView;

    .line 468
    sget v6, Lcom/android/keyguard/R$id;->btn_next:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnNext:Landroid/widget/ImageView;

    .line 469
    const/4 v6, 0x5

    new-array v1, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnCollection:Landroid/widget/ImageView;

    aput-object v6, v1, v7

    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    aput-object v6, v1, v10

    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPrev:Landroid/widget/ImageView;

    const/4 v8, 0x2

    aput-object v6, v1, v8

    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnPlay:Landroid/widget/ImageView;

    const/4 v8, 0x3

    aput-object v6, v1, v8

    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnNext:Landroid/widget/ImageView;

    const/4 v8, 0x4

    aput-object v6, v1, v8

    .line 470
    .local v1, "buttons":[Landroid/view/View;
    array-length v8, v1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v1, v6

    .line 471
    .local v4, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 473
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    sget v6, Lcom/android/keyguard/R$id;->music_artwork:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtwork:Landroid/widget/ImageView;

    .line 474
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    .line 476
    .local v3, "screenOn":Z
    invoke-direct {p0, v7}, Lcom/meizu/media/music/KeyguardMusicView;->setEnableMarquee(Z)V

    .line 477
    sget v6, Lcom/android/keyguard/R$id;->keyguard_lrc_list:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    .line 478
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setClickable(Z)V

    .line 479
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 480
    new-instance v6, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;

    iget-object v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v8}, Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;-><init>(Lcom/meizu/media/music/KeyguardMusicView;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLyricAdapter:Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;

    .line 481
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLyricAdapter:Lcom/meizu/media/music/KeyguardMusicView$LyricListAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLyricViewListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 483
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/16 v8, 0x1e

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 484
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 486
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const v8, 0x358637bd    # 1.0E-6f

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 487
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 488
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 489
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->lyric_view_item_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mItemHeight:I

    .line 490
    sget v6, Lcom/android/keyguard/R$id;->music_progress_bar:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/CircleProgressBar;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    .line 491
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$color;->music_circle_rim_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/CircleProgressBar;->setCircleRimColor(I)V

    .line 492
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$color;->music_circle_bar_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/CircleProgressBar;->setCircleBarColor(I)V

    .line 493
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {v6, v10}, Lcom/meizu/widget/CircleProgressBar;->setClockwiseLoading(Z)V

    .line 500
    sget v6, Lcom/android/keyguard/R$id;->music_mask:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicMask:Landroid/widget/ImageView;

    .line 501
    sget v6, Lcom/android/keyguard/R$id;->artwork_lrclist:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkAndLrclist:Landroid/widget/RelativeLayout;

    .line 502
    sget v6, Lcom/android/keyguard/R$id;->music_artwork_back:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    .line 503
    sget v6, Lcom/android/keyguard/R$id;->music_artwork_front:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    .line 504
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 505
    const-string/jumbo v7, "window"

    .line 504
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 506
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 507
    .local v2, "displayWidth":I
    iget-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->music_circleimageview_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 508
    .local v0, "artworkWidth":I
    add-int v6, v2, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMoveDistance:F

    .line 509
    sget v6, Lcom/android/keyguard/R$id;->artwork_lrclist_content:I

    invoke-virtual {p0, v6}, Lcom/meizu/media/music/KeyguardMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkContent:Landroid/widget/FrameLayout;

    .line 450
    return-void
.end method

.method public onGoToKeyguard()V
    .locals 2

    .prologue
    .line 1047
    const-string/jumbo v0, "KeyguardMusicView"

    const-string/jumbo v1, "KeyguardMusicView onGoToKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->restartUpdateProgressBarIfNeeded()V

    .line 1046
    return-void
.end method

.method public onGoToLockedShade()V
    .locals 2

    .prologue
    .line 1042
    const-string/jumbo v0, "KeyguardMusicView"

    const-string/jumbo v1, "KeyguardMusicView onGoToLockedShade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateProgressBar:Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1041
    return-void
.end method

.method public onHideKeyguard(Z)V
    .locals 2
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtwork:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1038
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateProgressBar:Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1036
    return-void
.end method

.method public onNotificationChange(Z)V
    .locals 2
    .param p1, "hasNotification"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1085
    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHasNotification:Z

    .line 1086
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHasNotification:Z

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkContent:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->showAnimation(Landroid/view/View;Z)V

    .line 1084
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtwork:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkFront:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtworkContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->showAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 538
    instance-of v0, p1, Lcom/meizu/media/music/KeyguardMusicView$SavedState;

    if-nez v0, :cond_0

    .line 539
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 540
    return-void

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->populateMetadata()V

    .line 537
    return-void
.end method

.method public onShowKeyguard()V
    .locals 2

    .prologue
    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mShowKeyguardFristTime:Z

    .line 1031
    const-string/jumbo v0, "KeyguardMusicView"

    const-string/jumbo v1, "KeyguardMusicView onShowKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->updateMetadata()V

    .line 1033
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->restartUpdateProgressBarIfNeeded()V

    .line 1029
    return-void
.end method

.method public restartUpdateProgressBarIfNeeded()V
    .locals 4

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentPlatState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->playbackPositionShouldMove(I)Z

    move-result v0

    .line 1052
    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 1052
    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->updateProgressBar()Z

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mUpdateProgressBar:Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/media/music/KeyguardMusicView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1051
    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 11
    .param p1, "curPos"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v10, 0x0

    .line 820
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mKeyguardLyricEnabled:Z

    if-eqz v5, :cond_3

    .line 823
    const/4 v1, -0x1

    .line 824
    .local v1, "index":I
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    invoke-virtual {v5}, Lcom/meizu/media/music/support/LrcContent;->size()I

    move-result v2

    .line 825
    .local v2, "lrcSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 826
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    invoke-virtual {v5, v0}, Lcom/meizu/media/music/support/LrcContent;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/music/support/LrcCell;

    invoke-virtual {v5}, Lcom/meizu/media/music/support/LrcCell;->getTime()I

    move-result v5

    add-int/lit16 v5, v5, -0x28a

    if-ge p1, v5, :cond_4

    .line 828
    move v1, v0

    .line 843
    :cond_0
    :goto_1
    const-string/jumbo v5, "KeyguardMusicView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "seekTo mLastIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    if-ne v5, v1, :cond_7

    .line 845
    if-eq v1, v7, :cond_1

    if-nez v1, :cond_2

    .line 846
    :cond_1
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setSelection(I)V

    .line 848
    :cond_2
    return-void

    .line 821
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "lrcSize":I
    :cond_3
    return-void

    .line 831
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "lrcSize":I
    :cond_4
    add-int/lit8 v5, v2, -0x1

    if-ne v0, v5, :cond_6

    .line 833
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v5, v8}, Lcom/meizu/media/music/support/LrcContent;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/music/support/LrcCell;

    invoke-virtual {v5}, Lcom/meizu/media/music/support/LrcCell;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 835
    move v1, v2

    goto :goto_1

    .line 837
    :cond_5
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 825
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    :cond_7
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 852
    .local v3, "msg":Landroid/os/Message;
    iget v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    if-ltz v5, :cond_8

    iget v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v8, 0x2

    if-lt v5, v8, :cond_9

    .line 853
    :cond_8
    move v4, v1

    .line 854
    .local v4, "selection":I
    iput v10, v3, Landroid/os/Message;->what:I

    .line 855
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 861
    .end local v4    # "selection":I
    :goto_2
    iput v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    .line 862
    iget-object v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    return-void

    .line 857
    :cond_9
    iput v6, v3, Landroid/os/Message;->what:I

    .line 850
    const/16 v5, 0x514

    .line 858
    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 859
    iget v8, p0, Lcom/meizu/media/music/KeyguardMusicView;->mItemHeight:I

    iget v5, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLastIndex:I

    if-ge v5, v1, :cond_a

    move v5, v6

    :goto_3
    mul-int/2addr v5, v8

    iput v5, v3, Landroid/os/Message;->arg2:I

    goto :goto_2

    :cond_a
    move v5, v7

    goto :goto_3
.end method

.method public setCollectionImage()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mIsPrevNextShow:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->supportLoopAndCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isCollected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnCollection:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_media_collection:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1158
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnCollection:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    :goto_1
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnCollection:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_media_no_collection:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnCollection:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setLyricVisibility(Z)V
    .locals 2
    .param p1, "hasNotification"    # Z

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1109
    return-void

    .line 1111
    :cond_0
    if-eqz p1, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1107
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPlayModeImage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1165
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mIsPrevNextShow:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->supportLoopAndCollection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1167
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1168
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getPlayMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_media_loop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1164
    :goto_1
    return-void

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getPlayMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1171
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_media_single_loop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getPlayMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1173
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_media_random_loop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1174
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getPlayMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_media_loop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1176
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1177
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1181
    :cond_4
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mBtnLoop:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method setProgressBarDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 632
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/CircleProgressBar;->setMax(I)V

    .line 631
    return-void
.end method

.method setProgressBarEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBarEnabled:Z

    if-ne p1, v0, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBarEnabled:Z

    .line 421
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {v0}, Lcom/meizu/widget/CircleProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {v0}, Lcom/meizu/widget/CircleProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 425
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/CircleProgressBar;->setVisibility(I)V

    .line 416
    :cond_2
    :goto_0
    return-void

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/CircleProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setTrackArtistAlbumText(Ljava/lang/String;)V
    .locals 2
    .param p1, "trackArtistAlbum"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtistAlbumTitleText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mArtistAlbumTitleText:Ljava/lang/String;

    .line 1101
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackArtistAlbum:Landroid/widget/TextView;

    .line 1102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1101
    .end local p1    # "trackArtistAlbum":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    :cond_0
    return-void

    .line 1103
    .restart local p1    # "trackArtistAlbum":Ljava/lang/String;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setTrackTitleText(Ljava/lang/String;)V
    .locals 3
    .param p1, "trackTitle"    # Ljava/lang/String;

    .prologue
    .line 1210
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitleText:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/meizu/media/music/KeyguardMusicView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1211
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitleText:Ljava/lang/String;

    .line 1212
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1213
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .end local p1    # "trackTitle":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->computeTitleTextSize()I

    move-result v0

    .line 1216
    .local v0, "textSize":I
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 1217
    const-string/jumbo v1, "KeyguardMusicView"

    const-string/jumbo v2, "textSize  less than 18dp"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/16 v0, 0x12

    .line 1219
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1221
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mTrackTitle:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1209
    .end local v0    # "textSize":I
    :cond_1
    return-void

    .line 1213
    .restart local p1    # "trackTitle":Ljava/lang/String;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public startAlphaAmination()V
    .locals 4

    .prologue
    .line 1078
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1079
    .local v0, "animIn":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1080
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 1081
    .local v1, "lacIn":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1077
    return-void
.end method

.method updateMetadata()V
    .locals 4

    .prologue
    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mLrcContent:Lcom/meizu/media/music/support/LrcContent;

    .line 551
    invoke-direct {p0}, Lcom/meizu/media/music/KeyguardMusicView;->populateMetadata()V

    .line 552
    iget-boolean v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mKeyguardLyricEnabled:Z

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentLyric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->prepareLyricContent(Ljava/lang/String;Z)V

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->setCollectionImage()V

    .line 556
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView;->setPlayModeImage()V

    .line 557
    const-string/jumbo v0, "KeyguardMusicView"

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMusicController.getDuration() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->getDuration()J

    move-result-wide v2

    .line 558
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void
.end method

.method updateProgressBar()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 687
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mMusicController:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v0, v2

    .line 689
    .local v0, "position":I
    const-string/jumbo v1, "KeyguardMusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProgressBar position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    if-ltz v0, :cond_0

    .line 691
    invoke-virtual {p0, v0}, Lcom/meizu/media/music/KeyguardMusicView;->seekTo(I)V

    .line 692
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView;->mProgressBar:Lcom/meizu/widget/CircleProgressBar;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/CircleProgressBar;->setProgress(I)V

    .line 696
    const/4 v1, 0x1

    return v1

    .line 698
    :cond_0
    const-string/jumbo v1, "KeyguardMusicView"

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating progress bar; received invalid estimated media position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 700
    const-string/jumbo v3, "). Disabling progress."

    .line 699
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p0, v4}, Lcom/meizu/media/music/KeyguardMusicView;->setProgressBarEnabled(Z)V

    .line 702
    return v4
.end method
