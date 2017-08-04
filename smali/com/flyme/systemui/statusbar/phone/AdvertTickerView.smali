.class public Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;
.super Landroid/widget/LinearLayout;
.source "AdvertTickerView.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickIconId:I

.field private tickerIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "AdvertTickerView"

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->DEBUG:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 28
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 28
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 28
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 13
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 44
    if-eqz p1, :cond_b

    .line 45
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 46
    .local v2, "notification":Landroid/app/Notification;
    iget v7, v2, Landroid/app/Notification;->flags:I

    const/high16 v8, 0x1000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    const/4 v4, 0x1

    .line 47
    .local v4, "show":Z
    :goto_0
    if-eqz v4, :cond_0

    iget-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_0
    const/4 v4, 0x0

    .line 48
    :goto_1
    sget-boolean v7, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 49
    sget-object v7, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",show="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",tickerText="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_1
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 52
    :cond_2
    if-eqz v4, :cond_a

    .line 53
    iget-object v7, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_5

    .line 54
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "ticker_icon"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 55
    .local v6, "tickerIconId":I
    if-eqz v6, :cond_9

    .line 57
    :try_start_0
    iget v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    if-eq v6, v7, :cond_3

    .line 58
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 59
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    .line 58
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    .line 66
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "ticker_icon_switch"

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, "changeIcon":Z
    if-nez v0, :cond_4

    iget v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    if-eq v6, v7, :cond_5

    .line 68
    :cond_4
    iput v6, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 69
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7, v11}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 70
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v8, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .end local v0    # "changeIcon":Z
    .end local v6    # "tickerIconId":I
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    .line 82
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v8}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    .line 84
    .local v1, "mCurrentTicker":Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->startScrollSoon()V

    .line 85
    const/4 v7, 0x1

    return v7

    .line 46
    .end local v1    # "mCurrentTicker":Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
    .end local v4    # "show":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "show":Z
    goto/16 :goto_0

    .line 47
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 62
    .restart local v6    # "tickerIconId":I
    :catch_0
    move-exception v5

    .line 63
    .local v5, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 73
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_8
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7, v10}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7, v12}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    goto :goto_3

    .line 77
    :cond_9
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7, v10}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7, v12}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    goto :goto_3

    .line 87
    .end local v6    # "tickerIconId":I
    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->removeNotification(Ljava/lang/String;)V

    .line 91
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v4    # "show":Z
    :cond_b
    return v11
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 112
    const v0, 0x7f0f0275

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 113
    const v0, 0x7f0f0276

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 110
    return-void
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 100
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 94
    :cond_0
    return-void
.end method
