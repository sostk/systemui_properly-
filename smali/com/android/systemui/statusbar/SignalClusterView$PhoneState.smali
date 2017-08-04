.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field private mActivityIcon:I

.field private mIsMobileTypeIconWide:Z

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileInout:Landroid/widget/ImageView;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field private mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field private mSignalNetworkType:Landroid/widget/ImageView;

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIcon:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/NetworkType;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 407
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 396
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    .line 409
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->createSimViewGroup(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 411
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    .line 412
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    .line 407
    return-void
.end method


# virtual methods
.method public apply(Z)Z
    .locals 8
    .param p1, "isSecondaryIcon"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 427
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    if-eqz v1, :cond_3

    .line 441
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetworkTypeIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v6

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v5, v6, v1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;->getNetworkTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;Z)I

    move-result v0

    .line 443
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSignalNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSignalNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    .end local v0    # "id":I
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v6

    invoke-virtual {v1, v5, v3, v6, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 452
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 454
    const-string/jumbo v5, "SignalClusterView"

    const-string/jumbo v6, "mobile: %s sig=%d typ=%d"

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Object;

    .line 455
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "VISIBLE"

    :goto_3
    aput-object v1, v7, v3

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v7, v2

    .line 454
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v1, :cond_5

    move v1, v3

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSignalNetworkType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_6

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v1

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 431
    const-string/jumbo v6, " "

    .line 430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 431
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    .line 430
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInout:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIcon:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 441
    goto/16 :goto_1

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSignalNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSignalNetworkType:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 455
    :cond_4
    const-string/jumbo v1, "GONE"

    goto :goto_3

    :cond_5
    move v1, v4

    .line 457
    goto :goto_4

    :cond_6
    move v3, v4

    .line 459
    goto :goto_5
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 417
    const v0, 0x7f0f017d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 418
    const v0, 0x7f0f017f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    .line 420
    const v0, 0x7f0f017e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSignalNetworkType:Landroid/widget/ImageView;

    .line 422
    const v0, 0x7f0f0180

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInout:Landroid/widget/ImageView;

    .line 415
    return-void
.end method
