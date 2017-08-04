.class public abstract Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.super Ljava/lang/Object;
.source "MarqueeTicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;,
        Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;,
        Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;
    }
.end annotation


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mAdvanceToNextTicker:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

.field private mHandler:Landroid/os/Handler;

.field public mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public mTextSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvanceToNextTicker()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvance()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->skipToNextTicker()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sb"    # Landroid/view/View;

    .prologue
    const v2, 0x7f05004b

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceTicker:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceToNextTicker:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    .line 76
    const v0, 0x7f0f0272

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 77
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 78
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 83
    const v0, 0x7f0f0273

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 85
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 73
    return-void
.end method

.method private scheduleAdvance()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method private scheduleAdvanceToNextTicker()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceToNextTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    return-void
.end method

.method private skipToNextTicker()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceToNextTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method


# virtual methods
.method public addEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 11
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x0

    .line 93
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 98
    .local v2, "initialCount":I
    if-lez v2, :cond_0

    .line 99
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 100
    .local v4, "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    iget-object v8, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->iconLevel:I

    iget-object v8, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->iconLevel:I

    if-ne v7, v8, :cond_0

    .line 103
    iget-object v7, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 103
    invoke-static {v7, v8}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 100
    if-eqz v7, :cond_0

    .line 105
    return-void

    .line 109
    .end local v4    # "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    :cond_0
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v10}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 127
    .local v6, "tickerIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 128
    .local v5, "text":Ljava/lang/CharSequence;
    new-instance v3, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    invoke-direct {v3, p0, p1, v6, v5}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 132
    .local v3, "newSegment":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 133
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 134
    .restart local v4    # "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    iget-object v8, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 132
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "i":I
    .end local v3    # "newSegment":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    .end local v4    # "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "tickerIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 115
    iget-object v8, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getMeizuCustomizedIcon(Ljava/lang/String;)I

    move-result v8

    .line 114
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "tickerIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 117
    .end local v6    # "tickerIcon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 118
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 119
    const v8, 0x7f0205fe

    .line 118
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "tickerIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 121
    .end local v6    # "tickerIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 122
    const v8, 0x7f0205fd

    .line 121
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "tickerIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 140
    .restart local v0    # "i":I
    .restart local v3    # "newSegment":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    :cond_5
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    if-nez v2, :cond_6

    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 146
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 148
    .restart local v4    # "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7, v10}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 149
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7}, Landroid/widget/ImageSwitcher;->reset()V

    .line 150
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v7}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v8, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v7, v10}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 154
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v7}, Landroid/widget/TextSwitcher;->reset()V

    .line 155
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v8}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iput-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    .line 158
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iput-object v4, v7, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mSegment:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 159
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v7}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->startScrollSoon()V

    .line 161
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->tickerStarting()V

    .line 162
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvance()V

    .line 91
    .end local v4    # "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    :cond_6
    return-void
.end method

.method public halt()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->tickerHalting()V

    .line 239
    return-void
.end method

.method public reflowText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 248
    .local v0, "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    iget-object v1, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    .line 249
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 245
    .end local v0    # "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public removeEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 232
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 233
    .local v1, "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iget-object v3, v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    .line 231
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    .end local v1    # "seg":Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    :cond_1
    return-void
.end method

.method public abstract tickerDone()V
.end method

.method public abstract tickerHalting()V
.end method

.method public abstract tickerStarting()V
.end method
