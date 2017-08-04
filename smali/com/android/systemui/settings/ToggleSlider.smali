.class public Lcom/android/systemui/settings/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSlider$Listener;,
        Lcom/android/systemui/settings/ToggleSlider$1;,
        Lcom/android/systemui/settings/ToggleSlider$2;,
        Lcom/android/systemui/settings/ToggleSlider$3;,
        Lcom/android/systemui/settings/ToggleSlider$4;
    }
.end annotation


# instance fields
.field private mBrightnessDecrease:Landroid/view/View;

.field private mBrightnessIncrease:Landroid/view/View;

.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLabel:Landroid/widget/TextView;

.field private mLastBrightnessProgress:I

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSlider;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z

.field private final mTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessDecrease:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIncrease:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/ToggleSlider;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLastBrightnessProgress:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/ToggleSlider;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mLastBrightnessProgress:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance v0, Lcom/android/systemui/settings/ToggleSlider$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$1;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 147
    new-instance v0, Lcom/android/systemui/settings/ToggleSlider$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$2;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 229
    new-instance v0, Lcom/android/systemui/settings/ToggleSlider$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$3;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    .line 291
    new-instance v0, Lcom/android/systemui/settings/ToggleSlider$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$4;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->initLayout()V

    .line 69
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->removeAllViews()V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const v1, 0x7f0400c4

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 262
    const v0, 0x7f0f0277

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    const v0, 0x7f0f0278

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    .line 266
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarTrackingListener(Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setSkipAnimationListener(Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLastBrightnessProgress:I

    .line 271
    const v0, 0x7f0f0279

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 258
    return-void
.end method


# virtual methods
.method public isRunningAnimation()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 95
    :cond_0
    return-void
.end method

.method public refreshResource()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->initLayout()V

    .line 275
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 106
    return-void
.end method

.method public setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setKeyProgressIncrement(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public setMaxAnimation(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setSkipPosMax(I)V

    .line 279
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 2
    .param p1, "toggleSlider"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 2
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "brightness":Landroid/view/View;
    const v1, 0x7f0f01e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessDecrease:Landroid/view/View;

    .line 90
    const v1, 0x7f0f01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIncrease:Landroid/view/View;

    .line 85
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/settings/ToggleSlider$Listener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    .line 102
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public setValueAnimation(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setSkipProgress(F)V

    .line 283
    return-void
.end method
