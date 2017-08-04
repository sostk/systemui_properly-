.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/view/ViewGroup;
.source "QSPanel.java"

# interfaces
.implements Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;
.implements Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$H;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;,
        Lcom/android/systemui/qs/QSPanel$1;,
        Lcom/android/systemui/qs/QSPanel$2;,
        Lcom/android/systemui/qs/QSPanel$3;,
        Lcom/android/systemui/qs/QSPanel$4;
    }
.end annotation


# static fields
.field private static DEFAULT_SWAP_DELAY:I

.field private static DEFAULT_SWAP_DURATION:I


# instance fields
.field private mAllTilesNum:I

.field private mAlphaInAnimation:Landroid/view/animation/Animation;

.field private mAlphaOutAnimation:Landroid/view/animation/Animation;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessHeightPx:I

.field private mBrightnessMarginTop:I

.field private mBrightnessPaddingTop:I

.field private final mBrightnessView:Landroid/view/View;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCellHeight:I

.field private mCellWidth:I

.field private mClosingDetail:Z

.field private mColumns:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultDisplayX:I

.field private mDefaultDisplayY:I

.field private mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

.field private mDetail:Landroid/view/View;

.field private mDetailArrow:Lcom/flyme/systemui/qs/ArrowView;

.field private mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

.field private mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailInAnimation:Landroid/view/animation/Animation;

.field private mDetailOffsetY:I

.field private mDetailOutAnimation:Landroid/view/animation/Animation;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private mDetailReserveSpace:Landroid/view/View;

.field private mDetailSettingsButton:Landroid/widget/TextView;

.field private mDetailWrapper:Landroid/view/View;

.field private mDraging:Z

.field private mDualTileUnderlap:I

.field private mEditMode:Z

.field private mEnabledTilesNum:I

.field private mEnabledTilesRows:I

.field private mExpanded:Z

.field private mForceRefreshTiles:Z

.field private mGridContentVisible:Z

.field private mGridHeight:I

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mInstantAlphaInAnimation:Landroid/view/animation/Animation;

.field private mLastVisibleTileRow:I

.field private mListening:Z

.field private mPanelPaddingBottom:I

.field private mPanelPaddingSide:I

.field private mPanelPaddingTop:I

.field private mQSContainHeight:I

.field private mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

.field private mQSPanelEditHeight:I

.field private mQSPanelEditInterpolator:Landroid/view/animation/Interpolator;

.field private mQSPanelEditMaxHeight:I

.field private final mQSTilesEditBackground:Landroid/view/View;

.field private mQSTilesEditBackgroundMarginTop:I

.field private mQSTilesEditBackgroundPaddingLeft:I

.field private mQSTilesEditBackgroundPaddingTop:I

.field private mQSTilesEditButton:Landroid/widget/ImageView;

.field private final mQSTilesEditTips:Landroid/widget/TextView;

.field private mQSTilesEditTipsHeight:I

.field private mQSTilesEditTipsMarginBottom:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetDetailPosition:Ljava/lang/Runnable;

.field private mStatusBarHeaderViewHeight:I

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTileViewDragListener:Landroid/view/View$OnDragListener;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSPanel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSContainHeight:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditMaxHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSPanel;)Lcom/flyme/systemui/qs/ArrowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailArrow:Lcom/flyme/systemui/qs/ArrowView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSPanel;)Lcom/flyme/systemui/qs/DetailScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOffsetY:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastVisibleTileRow:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mDraging:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/QSPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditHeight:I

    return p1
.end method

.method static synthetic -wrap0(FII)I
    .locals 1
    .param p0, "t"    # F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->interpolate(FII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "record"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/qs/QSPanel;ZIZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "row"    # I
    .param p3, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;->setGridContentAlpha(ZIZ)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/qs/QSPanel;ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "alert"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showAlert(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/QSPanel;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "alert"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowAlert(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;ZZ)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->onDetailOutAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/QSPanel;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/Point;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailPosition(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/qs/QSPanel;ZI)V
    .locals 0
    .param p1, "editMode"    # Z
    .param p2, "row"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setEditTilesAlpha(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1627
    const/16 v0, 0x190

    sput v0, Lcom/android/systemui/qs/QSPanel;->DEFAULT_SWAP_DELAY:I

    .line 1628
    const/16 v0, 0xfa

    sput v0, Lcom/android/systemui/qs/QSPanel;->DEFAULT_SWAP_DURATION:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput v6, p0, Lcom/android/systemui/qs/QSPanel;->mLastVisibleTileRow:I

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 111
    new-instance v1, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 858
    new-instance v1, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 866
    new-instance v1, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 1043
    new-instance v1, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileViewDragListener:Landroid/view/View$OnDragListener;

    .line 1601
    iput-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mEditMode:Z

    .line 1602
    iput-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mDraging:Z

    .line 1603
    iput-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mForceRefreshTiles:Z

    .line 1610
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mAllTilesNum:I

    .line 1611
    iput v6, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    .line 1612
    iput v6, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    .line 1619
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3e947ae1    # 0.29f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditInterpolator:Landroid/view/animation/Interpolator;

    .line 1639
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1638
    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1641
    new-instance v1, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mSetDetailPosition:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 145
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 147
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 148
    const v2, 0x7f040096

    .line 147
    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 149
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 150
    const v2, 0x7f040093

    .line 149
    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    const v2, 0x7f0f01e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTips:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->setupAnimations()V

    .line 157
    new-instance v3, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 158
    const v1, 0x7f0f01e1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 159
    const v2, 0x7f0f01e3

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/ToggleSlider;

    .line 157
    invoke-direct {v3, v4, v1, v2}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 161
    new-instance v0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    invoke-direct {v0, p0, p0, p0, p0}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/ViewGroup;Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    .line 162
    .local v0, "delayRunable":Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;
    sget v1, Lcom/android/systemui/qs/QSPanel;->DEFAULT_SWAP_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->setSwapDelay(J)V

    .line 163
    sget v1, Lcom/android/systemui/qs/QSPanel;->DEFAULT_SWAP_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->setSwapDuration(J)V

    .line 164
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSPanel;->setMotionEventSplittingEnabled(Z)V

    .line 142
    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 410
    .local v4, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 411
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 414
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mTileViewDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 416
    new-instance v0, Lcom/android/systemui/qs/QSPanel$5;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSPanel$5;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 479
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSTile;->setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 480
    new-instance v1, Lcom/android/systemui/qs/QSPanel$6;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSPanel$6;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 493
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui/qs/QSPanel$7;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/QSPanel$7;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 503
    .local v2, "clickSecondary":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/systemui/qs/QSPanel$8;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanel$8;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 529
    .local v3, "longClick":Landroid/view/View$OnLongClickListener;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 530
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 536
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 537
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 723
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 5
    .param p1, "state"    # Z
    .param p2, "record"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 802
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Callback;

    .line 803
    .local v0, "callback":Lcom/android/systemui/qs/QSPanel$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    goto :goto_0

    .line 806
    .end local v0    # "callback":Lcom/android/systemui/qs/QSPanel$Callback;
    :cond_0
    if-eqz p2, :cond_1

    .line 807
    iget-object v2, p2, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 808
    .local v2, "detailView":Landroid/view/View;
    instance-of v4, v2, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 809
    check-cast v3, Lcom/android/systemui/qs/QSDetailItems;

    .line 810
    .local v3, "v":Lcom/android/systemui/qs/QSDetailItems;
    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/QSDetailItems;->setLoadingVisible(Z)V

    .line 798
    .end local v2    # "detailView":Landroid/view/View;
    .end local v3    # "v":Lcom/android/systemui/qs/QSDetailItems;
    :cond_1
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 3
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 784
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Callback;

    .line 785
    .local v0, "callback":Lcom/android/systemui/qs/QSPanel$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    goto :goto_0

    .line 780
    .end local v0    # "callback":Lcom/android/systemui/qs/QSPanel$Callback;
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Callback;

    .line 794
    .local v0, "callback":Lcom/android/systemui/qs/QSPanel$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    goto :goto_0

    .line 789
    .end local v0    # "callback":Lcom/android/systemui/qs/QSPanel$Callback;
    :cond_0
    return-void
.end method

.method private static getMaxInt(II)I
    .locals 4
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 1407
    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    div-int v2, p0, p1

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    div-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method private getRowTop(I)I
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 765
    if-gez p1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    return v0

    .line 766
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    add-int/2addr v0, v1

    return v0

    .line 767
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 768
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTipsMarginBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTipsHeight:I

    add-int/2addr v0, v1

    return v0

    .line 767
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getTileIndex(Landroid/view/View;)I
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 961
    const/4 v1, -0x1

    .line 963
    .local v1, "index":I
    instance-of v3, p1, Lcom/android/systemui/qs/QSTileView;

    if-eqz v3, :cond_0

    .line 964
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 965
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 966
    .local v2, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    if-ne v3, p1, :cond_1

    .line 967
    move v1, v0

    .line 973
    .end local v0    # "i":I
    .end local v2    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return v1

    .line 964
    .restart local v0    # "i":I
    .restart local v2    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 334
    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    const/4 v0, 0x1

    .line 335
    .local v0, "enabled":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f0f0018

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 334
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTileEnabled(Landroid/view/View;Z)V

    .line 329
    return-void
.end method

.method private handleShowAlert(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "alert"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 1149
    if-eqz p2, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1151
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 1152
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1148
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V
    .locals 7
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 565
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 566
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V

    .line 564
    :goto_0
    return-void

    .line 568
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIIZ)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIIZ)V
    .locals 8
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "row"    # I
    .param p6, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 593
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    if-ne v3, p2, :cond_1

    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, 0x0

    .line 595
    .local v0, "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    const/4 v1, 0x0

    .line 596
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    iput p5, p0, Lcom/android/systemui/qs/QSPanel;->mLastVisibleTileRow:I

    .line 597
    if-eqz p2, :cond_4

    .line 598
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 599
    .local v0, "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-interface {v0, v3, v6, v7}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 600
    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Must return detail view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 602
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    .line 603
    .local v2, "settingsIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v6, Lcom/android/systemui/qs/QSPanel$9;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/qs/QSPanel$9;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Intent;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {v3}, Lcom/flyme/systemui/qs/DetailScrollView;->removeAllViews()V

    .line 614
    invoke-direct {p0, v4, p5, v5}, Lcom/android/systemui/qs/QSPanel;->setGridContentAlpha(ZIZ)V

    .line 615
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->setDetailPosition(Landroid/graphics/Point;)V

    .line 617
    const-string/jumbo v3, "QSPanel"

    const-string/jumbo v5, "It\'s OpeningDetail"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    iget-object v5, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v3, v5}, Lcom/flyme/systemui/qs/DetailScrollView;->addView(Landroid/view/View;)V

    .line 622
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/qs/DetailScrollView;->setScrollY(I)V

    .line 624
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 626
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->showDetailWithAnimation()V

    .line 647
    .end local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :goto_2
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->sendAccessibilityEvent(I)V

    .line 592
    return-void

    .line 603
    .restart local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .restart local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    .line 629
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    .local v0, "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    .line 632
    const-string/jumbo v3, "QSPanel"

    const-string/jumbo v5, "It\'s ClosingDetail"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/flyme/systemui/qs/DetailScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 637
    if-eqz p6, :cond_5

    .line 638
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailArrow:Lcom/flyme/systemui/qs/ArrowView;

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5}, Lcom/flyme/systemui/qs/ArrowView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 639
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5}, Lcom/flyme/systemui/qs/DetailScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 643
    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    .line 645
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(ZLcom/android/systemui/qs/QSPanel$Record;)V

    goto :goto_2

    .line 641
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->onDetailOutAnimationEnd()V

    goto :goto_3
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V
    .locals 9
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z
    .param p3, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 573
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    .line 575
    :cond_1
    const/4 v3, 0x0

    .local v3, "x":I
    const/4 v4, 0x0

    .line 576
    .local v4, "y":I
    if-eqz p2, :cond_6

    .line 577
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 578
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->isQsPanelEditAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 580
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileView;->getLocationOnScreen()[I

    move-result-object v7

    .line 581
    .local v7, "pos":[I
    const-string/jumbo v0, "QSPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " pos[0]:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v7, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " pos[1]:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v7, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    aget v0, v7, v2

    if-lez v0, :cond_4

    aget v0, v7, v1

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    if-ge v0, v6, :cond_5

    :cond_4
    return-void

    .line 584
    :cond_5
    aget v0, v7, v2

    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    .line 585
    aget v0, v7, v1

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOffsetY:I

    add-int v4, v0, v1

    .line 588
    .end local v7    # "pos":[I
    :cond_6
    iget v5, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .local v5, "row":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    .line 589
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIIZ)V

    .line 572
    return-void
.end method

.method private static interpolate(FII)I
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1411
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isQsPanelEditAnimRunning()Z
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDetailOutAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->cleanupDetailView()V

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {v0}, Lcom/flyme/systemui/qs/DetailScrollView;->removeAllViews()V

    .line 1369
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailArrow:Lcom/flyme/systemui/qs/ArrowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/qs/ArrowView;->setAlpha(F)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/qs/DetailScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1373
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastVisibleTileRow:I

    invoke-direct {p0, v3, v0, v3}, Lcom/android/systemui/qs/QSPanel;->setGridContentAlpha(ZIZ)V

    .line 1374
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->setTilesVisibilityAll()V

    .line 1363
    return-void
.end method

.method private setDetailPosition(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "position"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, -0x1

    .line 1198
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1199
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplayY:I

    .line 1198
    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1200
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1202
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailReserveSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailArrow:Lcom/flyme/systemui/qs/ArrowView;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/qs/ArrowView;->setArrowPosition(I)V

    .line 1204
    const-string/jumbo v1, "QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDetailPosition position.x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " position.y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDefaultDisplayY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplayY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    return-void

    .line 818
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 819
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v0, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 821
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 816
    return-void

    .line 819
    :cond_1
    const/4 v0, 0x0

    .local v0, "scanState":Z
    goto :goto_0
.end method

.method private setEditModeAlpha(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1262
    if-eqz p2, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1264
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaInAnimation:Landroid/view/animation/Animation;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1261
    :goto_1
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaOutAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1271
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private setEditTilesAlpha(ZI)V
    .locals 7
    .param p1, "editMode"    # Z
    .param p2, "row"    # I

    .prologue
    const/4 v4, 0x0

    .line 1558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1559
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1560
    .local v1, "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v5, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const v6, 0x7f0f0018

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1561
    .local v2, "visibleAlpha":F
    :goto_1
    iget v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-lt v3, p2, :cond_4

    .line 1562
    iget-object v5, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    if-eqz p1, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 1563
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    if-eqz p1, :cond_3

    .end local v2    # "visibleAlpha":F
    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    .line 1558
    :cond_0
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1560
    :cond_1
    const v2, 0x3e4ccccd    # 0.2f

    .restart local v2    # "visibleAlpha":F
    goto :goto_1

    .line 1562
    :cond_2
    const/4 v3, 0x4

    goto :goto_2

    .line 1563
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 1564
    :cond_4
    iget v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-ge v3, p2, :cond_0

    .line 1566
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 1567
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_4

    .line 1557
    .end local v1    # "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v2    # "visibleAlpha":F
    :cond_5
    return-void
.end method

.method private setGridContentAlpha(ZIZ)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "row"    # I
    .param p3, "animate"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 1210
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1211
    .local v1, "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    if-eqz p3, :cond_2

    .line 1212
    invoke-virtual {p0, v8, v7}, Lcom/android/systemui/qs/QSPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1213
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v8, v7}, Lcom/android/systemui/qs/QSTileView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1222
    :cond_0
    :goto_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const v5, 0x7f0f0018

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTileView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1223
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1224
    .local v2, "visibleAlpha":F
    :goto_2
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_8

    .line 1225
    iget v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-le v3, p2, :cond_8

    .line 1226
    if-eqz p3, :cond_6

    .line 1227
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaInAnimation:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSTileView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1209
    .end local v2    # "visibleAlpha":F
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1215
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getLayerType()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1216
    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/QSPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1218
    :cond_3
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getLayerType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1219
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/qs/QSTileView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1223
    :cond_4
    const v2, 0x3e4ccccd    # 0.2f

    .restart local v2    # "visibleAlpha":F
    goto :goto_2

    .line 1227
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaOutAnimation:Landroid/view/animation/Animation;

    goto :goto_3

    .line 1229
    :cond_6
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    if-eqz p1, :cond_7

    .end local v2    # "visibleAlpha":F
    :goto_5
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_4

    .restart local v2    # "visibleAlpha":F
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 1231
    :cond_8
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_1

    .line 1232
    iget v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-gt v3, p2, :cond_1

    .line 1233
    if-eqz p3, :cond_9

    .line 1234
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mInstantAlphaInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1236
    :cond_9
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_4

    .line 1240
    .end local v1    # "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v2    # "visibleAlpha":F
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1241
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/qs/QSPanel;->setNormalModeAlpha(ZZ)V

    .line 1208
    :cond_b
    :goto_6
    return-void

    .line 1242
    :cond_c
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    if-ge p2, v3, :cond_b

    .line 1243
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/qs/QSPanel;->setEditModeAlpha(ZZ)V

    goto :goto_6
.end method

.method private setNormalModeAlpha(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1248
    if-eqz p2, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1250
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaInAnimation:Landroid/view/animation/Animation;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1247
    :goto_1
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaOutAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1254
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1257
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private setQsPanelEditDisplay(ZI)V
    .locals 6
    .param p1, "editMode"    # Z
    .param p2, "row"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1539
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->isQsPanelEditAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1543
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v0, 0x7f02050e

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1545
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mEditMode:Z

    .line 1546
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditMaxHeight:I

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditHeight:I

    .line 1548
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setEditTilesAlpha(ZI)V

    .line 1549
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1550
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-nez p1, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->requestLayout()V

    .line 1538
    return-void

    .line 1543
    :cond_2
    const v0, 0x7f02050f

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1549
    goto :goto_1

    :cond_4
    move v0, v4

    .line 1550
    goto :goto_2

    :cond_5
    move v1, v2

    .line 1551
    goto :goto_3

    :cond_6
    move v3, v4

    .line 1552
    goto :goto_4
.end method

.method private setTileEnabled(Landroid/view/View;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1122
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0f0019

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->isSwapping()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0f0018

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1124
    instance-of v2, p1, Lcom/android/systemui/qs/QSTileView;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 1125
    check-cast v1, Lcom/android/systemui/qs/QSTileView;

    .line 1126
    .local v1, "tileView":Lcom/android/systemui/qs/QSTileView;
    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/QSTileView;->setClickEnabled(Z)V

    .line 1128
    .end local v1    # "tileView":Lcom/android/systemui/qs/QSTileView;
    :cond_2
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 1129
    .local v0, "tileDisableAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1130
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1131
    const-string/jumbo v2, "alpha"

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 1133
    if-eqz p2, :cond_3

    .line 1134
    new-array v2, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 1139
    :goto_1
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1140
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1136
    :cond_3
    new-array v2, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v5

    const v3, 0x3e4ccccd    # 0.2f

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    return-void
.end method

.method private setupAnimations()V
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f050077

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mInstantAlphaInAnimation:Landroid/view/animation/Animation;

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f050075

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaInAnimation:Landroid/view/animation/Animation;

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/qs/QSPanel$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$13;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f050076

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaOutAnimation:Landroid/view/animation/Animation;

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mAlphaOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/qs/QSPanel$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$14;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f05007a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailInAnimation:Landroid/view/animation/Animation;

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/qs/QSPanel$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$15;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f05007b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOutAnimation:Landroid/view/animation/Animation;

    .line 1347
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/qs/QSPanel$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$16;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1299
    return-void
.end method

.method private showAlert(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "alert"    # Ljava/lang/String;

    .prologue
    .line 1144
    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 313
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V

    .line 310
    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p3, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 319
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isFilterPanelShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->setIsQSPanelDetailShowing(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_2

    move v2, v1

    :goto_0
    if-eqz p3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 318
    return-void

    :cond_2
    move v2, v0

    .line 321
    goto :goto_0
.end method

.method private showDetailWithAnimation()V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/QSPanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$10;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 662
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailArrow:Lcom/flyme/systemui/qs/ArrowView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/qs/ArrowView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 663
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/qs/DetailScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 664
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/qs/DetailScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 654
    return-void
.end method

.method private startQsPanelEditDisplayAnimator(ZI)V
    .locals 10
    .param p1, "editMode"    # Z
    .param p2, "row"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1443
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->isQsPanelEditAnimRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1444
    return-void

    .line 1446
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 1447
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v3, 0x7f02050e

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1449
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mEditMode:Z

    .line 1451
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    if-nez p1, :cond_3

    .line 1452
    const v3, 0x7f06000a

    .line 1451
    :goto_1
    invoke-static {v6, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 1453
    .local v0, "brightnessAlpha":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1454
    if-eqz p1, :cond_4

    move v3, v4

    :goto_2
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1455
    new-instance v3, Lcom/android/systemui/qs/QSPanel$17;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/QSPanel$17;-><init>(Lcom/android/systemui/qs/QSPanel;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1475
    if-eqz p1, :cond_5

    const/4 v2, 0x0

    .line 1476
    .local v2, "startValue":F
    :goto_3
    new-array v3, v9, [F

    aput v2, v3, v4

    sub-float v6, v5, v2

    aput v6, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1477
    .local v1, "openQsPanelFullAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x15e

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1478
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1479
    new-instance v3, Lcom/android/systemui/qs/QSPanel$18;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSPanel$18;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1488
    new-instance v3, Lcom/android/systemui/qs/QSPanel$19;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/QSPanel$19;-><init>(Lcom/android/systemui/qs/QSPanel;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1508
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1509
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/systemui/qs/QSPanel$20;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/systemui/qs/QSPanel$20;-><init>(Lcom/android/systemui/qs/QSPanel;ZI)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1527
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-eqz v3, :cond_6

    .line 1528
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v1, v5, v4

    aput-object v0, v5, v8

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1535
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1442
    return-void

    .line 1447
    .end local v0    # "brightnessAlpha":Landroid/animation/Animator;
    .end local v1    # "openQsPanelFullAnim":Landroid/animation/ValueAnimator;
    .end local v2    # "startValue":F
    :cond_2
    const v3, 0x7f02050f

    goto :goto_0

    .line 1452
    :cond_3
    const v3, 0x7f06000b

    goto :goto_1

    .line 1454
    .restart local v0    # "brightnessAlpha":Landroid/animation/Animator;
    :cond_4
    const/16 v3, 0xc8

    goto :goto_2

    .line 1475
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "startValue":F
    goto :goto_3

    .line 1530
    .restart local v1    # "openQsPanelFullAnim":Landroid/animation/ValueAnimator;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-nez p1, :cond_7

    move v3, v5

    :goto_5
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1531
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-nez p1, :cond_8

    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    .line 1530
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 1531
    :cond_8
    const/4 v4, 0x4

    goto :goto_6
.end method

.method private updateDetailLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1276
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v6, :cond_4

    .line 1277
    const/4 v2, -0x1

    .line 1278
    .local v2, "r":I
    const/4 v0, -0x1

    .line 1279
    .local v0, "c":I
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    .line 1280
    .local v1, "enabledTilesNum":I
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1281
    .local v3, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v6, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 1284
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_2

    .line 1285
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1286
    const/4 v0, 0x0

    .line 1290
    :goto_1
    iput v2, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 1291
    iput v0, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 1292
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1284
    :cond_2
    if-eqz v1, :cond_1

    .line 1288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1294
    .end local v3    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1295
    .local v5, "tr":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget v6, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v8, v6, v8}, Lcom/android/systemui/qs/QSPanel;->setGridContentAlpha(ZIZ)V

    .line 1275
    .end local v0    # "c":I
    .end local v1    # "enabledTilesNum":I
    .end local v2    # "r":I
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    .end local v5    # "tr":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_4
    return-void
.end method

.method private updateDetailText()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f09023b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f09023a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    :cond_1
    return-void
.end method

.method private updateEditButtonState()V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1395
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mAllTilesNum:I

    if-ne v0, v1, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEditModeLayout()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1573
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->isQsPanelEditAnimRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1574
    const/4 v2, -0x1

    .line 1575
    .local v2, "r":I
    const/4 v0, -0x1

    .line 1576
    .local v0, "c":I
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    .line 1577
    .local v1, "enabledTilesNum":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1578
    .local v3, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 1579
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    .line 1580
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1581
    const/4 v0, 0x0

    .line 1585
    :goto_1
    iput v2, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 1586
    iput v0, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 1587
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1579
    :cond_2
    if-eqz v1, :cond_1

    .line 1583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1589
    .end local v3    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_3
    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/qs/QSPanel;->setQsPanelEditDisplay(ZI)V

    .line 1591
    .end local v0    # "c":I
    .end local v1    # "enabledTilesNum":I
    .end local v2    # "r":I
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingTop:I

    if-eq v5, v6, :cond_5

    .line 1592
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingLeft:I

    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingTop:I

    .line 1593
    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 1592
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1595
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTips:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTips:Landroid/widget/TextView;

    const v6, 0x7f09009d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1596
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1597
    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeightPx:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMarginTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/qs/QSPanel;->mQSContainHeight:I

    .line 1572
    :cond_7
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    return-void
.end method

.method public closeDetail()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V

    .line 546
    return-void
.end method

.method public closeDetail(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V

    .line 551
    return-void
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    return v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public getSwappableChildLeftTop(Landroid/view/View;)Landroid/graphics/Point;
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 892
    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTileIndex(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 893
    .local v5, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v7

    .line 894
    .local v7, "w":I
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 895
    .local v0, "cols":I
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 896
    .local v1, "cw":I
    mul-int v8, v1, v0

    sub-int v8, v7, v8

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, -0x1

    div-int v2, v8, v9

    .line 897
    .local v2, "extra":I
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int v9, v1, v2

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    add-int v3, v8, v9

    .line 898
    .local v3, "left":I
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v6

    .line 900
    .local v6, "top":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 901
    .local v4, "point":Landroid/graphics/Point;
    iput v3, v4, Landroid/graphics/Point;->x:I

    .line 902
    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 903
    return-object v4
.end method

.method public getTilesEditMode()Z
    .locals 2

    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->isQsPanelEditAnimRunning()Z

    move-result v0

    .line 1435
    .local v0, "animRunning":Z
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mEditMode:Z

    if-nez v1, :cond_0

    .end local v0    # "animRunning":Z
    :goto_0
    return v0

    .restart local v0    # "animRunning":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosingDetail()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f0b03b9

    .line 251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 253
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 257
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 259
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailView:Landroid/view/View;

    .line 260
    .local v1, "detailView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "detailView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v17

    .line 729
    .local v17, "w":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 730
    .local v5, "cols":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 731
    .local v6, "cw":I
    mul-int v18, v6, v5

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    add-int/lit8 v19, v5, -0x1

    div-int v8, v18, v19

    .line 733
    .local v8, "extra":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getLayoutDirection()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 734
    .local v9, "isRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    .line 735
    .local v7, "enabledTilesNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 736
    .local v12, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v18

    if-nez v18, :cond_2

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_2

    .line 738
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    goto :goto_1

    .line 733
    .end local v7    # "enabledTilesNum":I
    .end local v9    # "isRtl":Z
    .end local v12    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v13    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "isRtl":Z
    goto :goto_0

    .line 740
    .restart local v7    # "enabledTilesNum":I
    .restart local v12    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .restart local v13    # "record$iterator":Ljava/util/Iterator;
    :cond_2
    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v16

    .line 741
    .local v16, "top":I
    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    move/from16 v18, v0

    mul-int v18, v18, v6

    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    move/from16 v19, v0

    mul-int v19, v19, v8

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    move/from16 v19, v0

    add-int v10, v18, v19

    .line 743
    .local v10, "left":I
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v15

    .line 744
    .local v15, "tileWith":I
    if-eqz v9, :cond_3

    .line 745
    sub-int v14, v17, v10

    .line 746
    .local v14, "right":I
    sub-int v10, v14, v15

    .line 750
    :goto_2
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v19

    add-int v19, v19, v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v10, v1, v14, v2}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    goto :goto_1

    .line 748
    .end local v14    # "right":I
    :cond_3
    add-int v14, v10, v15

    .restart local v14    # "right":I
    goto :goto_2

    .line 753
    .end local v10    # "left":I
    .end local v12    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v14    # "right":I
    .end local v15    # "tileWith":I
    .end local v16    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    move/from16 v19, v0

    add-int v11, v18, v19

    .line 754
    .local v11, "qsHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMarginTop:I

    move/from16 v20, v0

    add-int v20, v20, v11

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMarginTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v11

    .line 754
    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->layout(IIII)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundMarginTop:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplayX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplayY:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mSetDetailPosition:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 727
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 681
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 682
    .local v8, "width":I
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, v8, v10

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeightPx:I

    invoke-static {v11}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 683
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackground:Landroid/view/View;

    invoke-virtual {v9, p1, p2}, Landroid/view/View;->measure(II)V

    .line 684
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 685
    .local v0, "brightnessHeight":I
    const/4 v4, -0x1

    .line 686
    .local v4, "r":I
    const/4 v1, -0x1

    .line 687
    .local v1, "c":I
    const/4 v7, 0x0

    .line 688
    .local v7, "rows":I
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    .line 689
    .local v2, "enabledTilesNum":I
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 690
    .local v5, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 692
    const/4 v9, -0x1

    if-eq v4, v9, :cond_1

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_3

    .line 693
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 694
    const/4 v1, 0x0

    .line 698
    :goto_1
    iput v4, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 699
    iput v1, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 700
    add-int/lit8 v7, v4, 0x1

    .line 702
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSTileView;->setDual(Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 703
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSTileView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 706
    :cond_2
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSTileView;->setTranslationX(F)V

    .line 707
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSTileView;->setTranslationY(F)V

    .line 708
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    invoke-static {v11}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    .line 709
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 692
    :cond_3
    if-eqz v2, :cond_1

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 711
    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_4
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mForceRefreshTiles:Z

    if-eqz v9, :cond_5

    .line 712
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    const/4 v10, 0x0

    invoke-direct {p0, v10, v9}, Lcom/android/systemui/qs/QSPanel;->setEditTilesAlpha(ZI)V

    .line 713
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/qs/QSPanel;->mForceRefreshTiles:Z

    .line 715
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v9

    if-eqz v9, :cond_7

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditHeight:I

    .line 717
    .local v3, "h":I
    :goto_2
    if-nez v7, :cond_6

    move v3, v0

    .line 718
    :cond_6
    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    .line 719
    invoke-virtual {p0, v8, v3}, Lcom/android/systemui/qs/QSPanel;->setMeasuredDimension(II)V

    .line 680
    return-void

    .line 716
    .end local v3    # "h":I
    :cond_7
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMarginTop:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    add-int v3, v9, v10

    .restart local v3    # "h":I
    goto :goto_2
.end method

.method public onSwapEnd(Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTileIndex(Landroid/view/View;)I

    move-result v1

    .line 909
    .local v1, "firstViewPos":I
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSPanel;->getTileIndex(Landroid/view/View;)I

    move-result v3

    .line 910
    .local v3, "secondViewPos":I
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 911
    .local v0, "firstRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 913
    .local v2, "secondRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v7, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTileView;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 914
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const v9, 0x7f0f0018

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSTileView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 915
    const/high16 v6, 0x3f800000    # 1.0f

    .line 916
    .local v6, "visibleAlpha":F
    :goto_0
    iget-object v7, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 917
    iget-object v7, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    .line 919
    .end local v6    # "visibleAlpha":F
    :cond_0
    iget-object v7, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    iget-object v7, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTileView;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    .line 920
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const v9, 0x7f0f0018

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSTileView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 921
    const/high16 v6, 0x3f800000    # 1.0f

    .line 922
    .restart local v6    # "visibleAlpha":F
    :goto_1
    iget-object v7, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 923
    iget-object v7, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    .line 927
    .end local v6    # "visibleAlpha":F
    :cond_1
    iget v5, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 928
    .local v5, "tempRow":I
    iget v4, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 929
    .local v4, "tempCol":I
    iget v7, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iput v7, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 930
    iget v7, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iput v7, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 931
    iput v5, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 932
    iput v4, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 935
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->requestLayout()V

    .line 942
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTileIndex(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSPanel;->getTileIndex(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->swapTile(II)V

    .line 945
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 946
    iget-object v8, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSTile;->getName()Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    mul-int/2addr v9, v10

    iget v10, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int/2addr v9, v10

    .line 945
    invoke-static {v7, v8, v9}, Lcom/android/systemui/SystemUIMobEventUtils;->collectPositionOfShortCut(Landroid/content/Context;Ljava/lang/String;I)V

    .line 947
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 948
    iget-object v8, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSTile;->getName()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    mul-int/2addr v9, v10

    iget v10, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int/2addr v9, v10

    .line 947
    invoke-static {v7, v8, v9}, Lcom/android/systemui/SystemUIMobEventUtils;->collectPositionOfShortCut(Landroid/content/Context;Ljava/lang/String;I)V

    .line 951
    iget-object v7, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 952
    iget-object v7, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 907
    return-void

    .line 915
    .end local v4    # "tempCol":I
    .end local v5    # "tempRow":I
    :cond_2
    const v6, 0x3e4ccccd    # 0.2f

    .restart local v6    # "visibleAlpha":F
    goto/16 :goto_0

    .line 921
    .end local v6    # "visibleAlpha":F
    :cond_3
    const v6, 0x3e4ccccd    # 0.2f

    .restart local v6    # "visibleAlpha":F
    goto :goto_1
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 299
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 297
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f0f01e3

    .line 175
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    .line 177
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 178
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 174
    return-void
.end method

.method public setDetailWrapper(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    .line 1158
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    const v2, 0x7f0f01dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailReserveSpace:Landroid/view/View;

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    const v2, 0x7f0f01ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/qs/ArrowView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailArrow:Lcom/flyme/systemui/qs/ArrowView;

    .line 1160
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    const v2, 0x7f0f01d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    .line 1161
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/qs/DetailScrollView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    .line 1162
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSPanel$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSPanel$11;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/qs/DetailScrollView;->setListener(Lcom/flyme/systemui/qs/DetailScrollView$Listener;)V

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 1175
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    .line 1176
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    .line 1177
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1178
    new-instance v0, Lcom/android/systemui/qs/QSPanel$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$12;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    .line 1184
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailReserveSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 269
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 267
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 186
    return-void
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    const/4 v4, 0x0

    .line 276
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 277
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 278
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 279
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    goto :goto_0

    .line 282
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 285
    :cond_2
    if-eqz p1, :cond_4

    .line 286
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 291
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/qs/QSPanel;->setTilesEditMode(ZZ)V

    .line 275
    :cond_3
    return-void

    .line 288
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_1
.end method

.method public setQSContainerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSContainHeight:I

    .line 1387
    :cond_0
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/qs/QSPanel$TileRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 362
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 363
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v7, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-interface {p1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 364
    iget-object v7, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 369
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v6, "tileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSTile<*>;>;"
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 371
    .restart local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v7, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "tile$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile;

    .line 374
    .local v3, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 375
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_2

    .line 379
    .end local v3    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 380
    .local v5, "tileRecordMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/systemui/qs/QSTile<*>;Lcom/android/systemui/qs/QSPanel$TileRecord;>;"
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 381
    .restart local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v7, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 383
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 384
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile;

    .line 385
    .restart local v3    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 388
    .end local v3    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mAllTilesNum:I

    .line 389
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mAllTilesNum:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    .line 390
    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    invoke-static {v7, v8}, Lcom/android/systemui/qs/QSPanel;->getMaxInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    .line 391
    const-string/jumbo v7, "QSPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setTiles  mEnabledTilesNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mAllTilesNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mAllTilesNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 392
    const-string/jumbo v9, "mEnabledTilesRows:"

    .line 391
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 392
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    .line 391
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/qs/QSPanel;->mForceRefreshTiles:Z

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateEditButtonState()V

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->requestLayout()V

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 402
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDetailWrapper:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_7
    return-void
.end method

.method public setTilesEditButton(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/ImageView;

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditButton:Landroid/widget/ImageView;

    .line 1402
    return-void
.end method

.method public setTilesEditMode(ZZ)V
    .locals 3
    .param p1, "editMode"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1415
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isClosingDetail()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mDraging:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->prepareMyself()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->removeMyself()V

    .line 1419
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->isSwapping()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->cancleSwap()V

    .line 1423
    :cond_3
    const-string/jumbo v0, "QSPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTilesEditMode mEditMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " editMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " animate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mEditMode:Z

    if-eq p1, v0, :cond_4

    .line 1425
    if-eqz p2, :cond_5

    .line 1426
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->startQsPanelEditDisplayAnimator(ZI)V

    .line 1414
    :cond_4
    :goto_0
    return-void

    .line 1428
    :cond_5
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setQsPanelEditDisplay(ZI)V

    goto :goto_0
.end method

.method public setTilesVisibilityAll()V
    .locals 4

    .prologue
    .line 1381
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1382
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 1380
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 305
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 306
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 307
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 304
    return-void
.end method

.method public updateResources()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 196
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 200
    const v2, 0x7f100031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    .line 202
    const v2, 0x7f0b02b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 203
    const v2, 0x7f0b02be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    .line 204
    const v2, 0x7f0b02c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 205
    const v2, 0x7f0b02c6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundMarginTop:I

    .line 206
    const v2, 0x7f0b02c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingTop:I

    .line 207
    const v2, 0x7f0b02ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingLeft:I

    .line 208
    const v2, 0x7f0b02cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTipsMarginBottom:I

    .line 209
    const v2, 0x7f0b02c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeightPx:I

    .line 222
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 223
    .local v1, "screenSize":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 224
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplayX:I

    .line 225
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplayY:I

    .line 226
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplayY:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditMaxHeight:I

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelEditHeight:I

    .line 228
    const v2, 0x7f0b02ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 229
    const v2, 0x7f0b02c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOffsetY:I

    .line 230
    const v2, 0x7f0b02c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMarginTop:I

    .line 231
    const v2, 0x7f0b02cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTipsHeight:I

    .line 232
    const v2, 0x7f100020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mAllTilesNum:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    .line 233
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    invoke-static {v2, v3}, Lcom/android/systemui/qs/QSPanel;->getMaxInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    .line 234
    const-string/jumbo v2, "QSPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateResources  mEnabledTilesNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mAllTilesNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mAllTilesNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 235
    const-string/jumbo v4, "mEnabledTilesRows:"

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 235
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mEnabledTilesRows:I

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const v2, 0x7f0b03ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    .line 238
    const v2, 0x7f0b03b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 239
    const v2, 0x7f0b02b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingSide:I

    .line 241
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailLayout()V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateEditModeLayout()V

    .line 195
    return-void

    .line 211
    .end local v1    # "screenSize":Landroid/graphics/Point;
    :cond_1
    const v2, 0x7f100030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    .line 213
    const v2, 0x7f0b02b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 214
    const v2, 0x7f0b02bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingTop:I

    .line 215
    const v2, 0x7f0b02bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 216
    const v2, 0x7f0b02c5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundMarginTop:I

    .line 217
    const v2, 0x7f0b02c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingTop:I

    .line 218
    const v2, 0x7f0b02c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditBackgroundPaddingLeft:I

    .line 219
    const v2, 0x7f0b02cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mQSTilesEditTipsMarginBottom:I

    .line 220
    const v2, 0x7f0b02c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeightPx:I

    goto/16 :goto_0
.end method
