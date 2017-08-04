.class public Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;
.super Landroid/widget/ViewSwitcher;
.source "AdvertSwitcherView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCallBack:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;

.field private mCurrentNotification:Landroid/service/notification/StatusBarNotification;

.field private mCurrentView:Landroid/view/View;

.field private mLeftIconView:Landroid/view/View;

.field private mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "AdvertSwitcherView"

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 32
    return-void
.end method

.method private applyCallBack(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCallBack:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCallBack:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;

    invoke-interface {v0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;->onChange(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method private hideTickerViewIfNeed()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mLeftIconView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mLeftIconView:Landroid/view/View;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mLeftIconView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->setDisplayedChild(I)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->applyCallBack(Z)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x1

    .line 37
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mUserId:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->addNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    if-eq v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->setDisplayedChild(I)V

    .line 43
    invoke-direct {p0, v2}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->applyCallBack(Z)V

    .line 45
    :cond_0
    return v2

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->hideTickerViewIfNeed()V

    .line 50
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    .line 88
    const v0, 0x7f0f0274

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    .line 89
    const v0, 0x7f0f0236

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mLeftIconView:Landroid/view/View;

    .line 86
    return-void
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->removeNotification(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->hideTickerViewIfNeed()V

    .line 64
    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;)V
    .locals 0
    .param p1, "callBack"    # Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCallBack:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;

    .line 98
    return-void
.end method

.method public userSwitched(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 72
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userSwitched="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mUserId:I

    if-eq v0, p1, :cond_0

    .line 74
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mUserId:I

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mUserId:I

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->addNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->removeNotification(Ljava/lang/String;)V

    goto :goto_0
.end method
