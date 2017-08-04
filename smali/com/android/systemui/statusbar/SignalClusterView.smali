.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:I

.field private mAirplaneIconId:I

.field private mEndPadding:I

.field private mEndPaddingNothingVisible:I

.field private mIsAirplaneMode:Z

.field private mIsVolteMode:Z

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNoSims:Landroid/widget/ImageView;

.field mNoSimsFirst:Landroid/widget/ImageView;

.field private mNoSimsFirstVisible:Z

.field private mNoSimsVisible:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mSecondaryTelephonyPadding:I

.field mVolteIcon:Landroid/widget/ImageView;

.field private mVolteIconId:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 59
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 61
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsFirstVisible:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVolteMode:Z

    .line 75
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteIconId:I

    .line 92
    return-void
.end method

.method private apply()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 329
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    const-string/jumbo v9, "SignalClusterView"

    const-string/jumbo v10, "vpn: %s"

    new-array v11, v12, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "VISIBLE"

    :goto_1
    aput-object v5, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_4

    .line 334
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 341
    :goto_2
    const-string/jumbo v9, "SignalClusterView"

    .line 342
    const-string/jumbo v10, "wifi: %s sig=%d"

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    .line 343
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "VISIBLE"

    :goto_3
    aput-object v5, v11, v6

    .line 344
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v12

    .line 342
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "anyMobileVisible":Z
    const/4 v2, 0x0

    .line 348
    .local v2, "firstMobileTypeId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "state$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 349
    .local v3, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    if-nez v0, :cond_1

    .line 351
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    .line 352
    const/4 v0, 0x1

    goto :goto_4

    .end local v0    # "anyMobileVisible":Z
    .end local v2    # "firstMobileTypeId":I
    .end local v3    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .end local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_2
    move v5, v7

    .line 331
    goto :goto_0

    .line 332
    :cond_3
    const-string/jumbo v5, "GONE"

    goto :goto_1

    .line 338
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 343
    :cond_5
    const-string/jumbo v5, "GONE"

    goto :goto_3

    .line 357
    .restart local v0    # "anyMobileVisible":Z
    .restart local v2    # "firstMobileTypeId":I
    .restart local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_a

    .line 358
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:I

    if-eqz v5, :cond_9

    .line 360
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:I

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    :goto_5
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    :goto_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_c

    .line 374
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :goto_7
    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_e

    .line 380
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :goto_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_f

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsFirst:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsFirstVisible:Z

    if-eqz v8, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v5, :cond_10

    if-nez v0, :cond_10

    .line 389
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 390
    :goto_a
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->setPaddingRelative(IIII)V

    .line 328
    return-void

    :cond_9
    move-object v5, v8

    .line 360
    goto :goto_5

    .line 366
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteIcon:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVolteMode:Z

    if-eqz v5, :cond_b

    move v5, v6

    :goto_b
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteIcon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteIconId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_b
    move v5, v7

    .line 368
    goto :goto_b

    .line 376
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 379
    :cond_d
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_7

    .line 382
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_f
    move v5, v7

    .line 385
    goto :goto_9

    .line 388
    :cond_10
    const/4 v1, 0x1

    .local v1, "anythingVisible":Z
    goto :goto_a
.end method

.method private getOrInflateState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 252
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 253
    return-object v0

    .line 256
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v2

    return-object v2
.end method

.method private getPhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 260
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 261
    return-object v0

    .line 264
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 267
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V

    .line 268
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 290
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 293
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 295
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 127
    const v3, 0x7f0f0224

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 128
    const v3, 0x7f0f0225

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 129
    const v3, 0x7f0f0226

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 130
    const v3, 0x7f0f022c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 131
    const v3, 0x7f0f022a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 132
    const v3, 0x7f0f0228

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsFirst:Landroid/widget/ImageView;

    .line 133
    const v3, 0x7f0f022b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 134
    const v3, 0x7f0f0227

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 135
    const v3, 0x7f0f0229

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 136
    const v3, 0x7f0f022d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteIcon:Landroid/widget/ImageView;

    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 138
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 141
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getSignalNoSIMPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;

    move-result-object v3

    invoke-interface {v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;->getNoSimIcon()I

    move-result v0

    .line 142
    .local v0, "noSimIconId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsFirst:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 151
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 152
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 153
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 155
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 149
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    const v1, 0x7f0b0415

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x7f0b0416

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    const v1, 0x7f0b041b

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    const v1, 0x7f0b041c

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 111
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 307
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 308
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 311
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 315
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 299
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public setIsAirplaneMode(ZII)V
    .locals 1
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I
    .param p3, "contentDescription"    # I

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 278
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 279
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:I

    .line 281
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVolteMode:Z

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVolteMode:Z

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 276
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "typeIcon"    # I
    .param p4, "activityIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "isTypeIconWide"    # Z
    .param p8, "subId"    # I

    .prologue
    .line 188
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/SignalClusterView;->getPhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 189
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 192
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 193
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 194
    invoke-static {v0, p5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    invoke-static {v0, p6}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    invoke-static {v0, p7}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 198
    invoke-static {v0, p4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 187
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 97
    const-string/jumbo v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 96
    return-void
.end method

.method public setNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;I)V
    .locals 1
    .param p1, "networkType"    # Lcom/flyme/systemui/statusbar/ext/NetworkType;
    .param p2, "subId"    # I

    .prologue
    .line 472
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->getOrInflateState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 473
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 471
    return-void
.end method

.method public setNoSims(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 219
    if-nez p1, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVolteMode:Z

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVolteMode:Z

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "hasSim0":Z
    const/4 v1, 0x0

    .line 222
    .local v1, "hasSim1":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "state$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 223
    .local v3, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 224
    .local v2, "slotID":I
    if-nez v2, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 227
    :cond_1
    if-ne v2, v8, :cond_0

    .line 228
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "hasSim0":Z
    .end local v1    # "hasSim1":Z
    .end local v2    # "slotID":I
    .end local v3    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .end local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_2
    move v5, v6

    .line 219
    goto :goto_0

    .line 231
    .restart local v0    # "hasSim0":Z
    .restart local v1    # "hasSim1":Z
    .restart local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getSignalNoSIMPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    invoke-interface {v5, v6, v0, p1, v7}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;->showNoSim(IZZZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsFirstVisible:Z

    .line 232
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getSignalNoSIMPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    invoke-interface {v5, v8, v1, p1, v6}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;->showNoSim(IZZZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 216
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 102
    const-string/jumbo v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 101
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 244
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 245
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method

.method public setVolteMode(ZI)V
    .locals 3
    .param p1, "is"    # Z
    .param p2, "volteIcon"    # I

    .prologue
    .line 208
    const-string/jumbo v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setVolteMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVolteMode:Z

    .line 211
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteIconId:I

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 206
    return-void
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 177
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 178
    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 175
    return-void
.end method
