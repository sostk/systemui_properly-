.class public Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "CornerAlphaOptimizedImageButton.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;
.implements Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;


# static fields
.field private static MAX_NOTIFICATION_COUNT:I

.field private static NOTIFICATION_INTERCEPTION_AUTO_CLEAR:Ljava/lang/String;

.field private static NOTIFICATION_INTERCEPTION_SHOW_NUMBER:Ljava/lang/String;

.field private static ONE_DAY_MILLISECOND:J

.field private static sXfermode:Landroid/graphics/Xfermode;


# instance fields
.field private AUTO_CLEAR_SETTING:Z

.field private CLEAR_DAY_MILLISECOND:J

.field private NOTIFICATION_READ:Ljava/lang/String;

.field private NOTIFICATION_UNREAD:Ljava/lang/String;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentPowerMode:I

.field private mEarliestTime:J

.field private mFilterPanelShow:Z

.field private mNotificationNumOffsetX:I

.field private mNotificationNumOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShowUnreadNotificationCounts:Z

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mToalNotificationCounts:I

.field private mUnreadNotificationCounts:I


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->loadSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "flyme_notification_interception_show_number"

    sput-object v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_INTERCEPTION_SHOW_NUMBER:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "flyme_notification_interception_auto_clear"

    sput-object v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_INTERCEPTION_AUTO_CLEAR:Ljava/lang/String;

    .line 58
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->ONE_DAY_MILLISECOND:J

    .line 59
    const/16 v0, 0x63

    sput v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    .line 62
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 63
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 62
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->sXfermode:Landroid/graphics/Xfermode;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    .line 57
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    .line 60
    sget-wide v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->ONE_DAY_MILLISECOND:J

    iput-wide v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    .line 64
    const/16 v1, 0x18

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    .line 65
    const/16 v1, 0x20

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    .line 66
    iput-boolean v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    .line 67
    iput v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mToalNotificationCounts:I

    .line 68
    const-string/jumbo v1, "unread"

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_UNREAD:Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "read"

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_READ:Ljava/lang/String;

    .line 70
    iput v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mCurrentPowerMode:I

    .line 74
    iput-boolean v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->AUTO_CLEAR_SETTING:Z

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const v3, 0x4114cccd    # 9.3f

    .line 78
    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    .line 82
    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->sXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    const-string/jumbo v1, "sans-serif-medium"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 88
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    const v2, 0x7f0b02d8

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    const v2, 0x7f0b02d9

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    .line 75
    return-void
.end method

.method private clearNotification()V
    .locals 18

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 162
    .local v3, "childCount":I
    if-lez v3, :cond_a

    .line 163
    const/4 v5, 0x0

    .line 164
    .local v5, "hasDelete":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 165
    .local v8, "nowTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    sub-long v14, v8, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 167
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v4, "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "child":Landroid/view/View;
    instance-of v14, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_1

    move-object v14, v2

    .line 171
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    .line 173
    .local v10, "postTime":J
    sub-long v14, v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 174
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v2    # "child":Landroid/view/View;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v10    # "postTime":J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 179
    const/4 v5, 0x1

    .line 180
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "row$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 181
    .local v12, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    .line 185
    .end local v4    # "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v6    # "i":I
    .end local v12    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v13    # "row$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 186
    sget v14, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-le v3, v14, :cond_6

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .restart local v4    # "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v3, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 190
    .restart local v2    # "child":Landroid/view/View;
    instance-of v14, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_4

    .line 191
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v2    # "child":Landroid/view/View;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 194
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    sget v15, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-le v14, v15, :cond_6

    .line 195
    const/4 v5, 0x1

    .line 196
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v7, v14, [Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 198
    .local v7, "list":[Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 199
    new-instance v15, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;-><init>(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V

    .line 198
    invoke-static {v14, v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 210
    const/4 v6, 0x0

    :goto_3
    sget v14, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    sub-int v14, v3, v14

    if-ge v6, v14, :cond_6

    .line 211
    aget-object v14, v7, v6

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 210
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 215
    .end local v4    # "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v6    # "i":I
    .end local v7    # "list":[Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_b

    .line 216
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 217
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    .line 218
    if-lez v3, :cond_b

    .line 219
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v3, :cond_b

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v14, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 221
    .restart local v2    # "child":Landroid/view/View;
    instance-of v14, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_9

    .line 222
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    .line 224
    .restart local v10    # "postTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    cmp-long v14, v14, v10

    if-gez v14, :cond_8

    .line 225
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    .line 224
    .end local v10    # "postTime":J
    :cond_8
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    .line 219
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 232
    .end local v5    # "hasDelete":Z
    .end local v6    # "i":I
    .end local v8    # "nowTime":J
    :cond_a
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    .line 160
    :cond_b
    return-void
.end method

.method private clearNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 241
    .local v4, "_id":I
    :try_start_0
    new-instance v0, Lcom/android/internal/statusbar/FlymeExtIStatusBarServiceProxy;

    invoke-direct {v0}, Lcom/android/internal/statusbar/FlymeExtIStatusBarServiceProxy;-><init>()V

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 242
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x3

    .line 241
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/FlymeExtIStatusBarServiceProxy;->onNotificationClearForReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v7

    .line 244
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "iRet":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 301
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 302
    .local v2, "len":I
    new-array v3, v2, [F

    .line 303
    .local v3, "widths":[F
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 304
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 305
    aget v4, v3, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v0, v4

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "j":I
    .end local v2    # "len":I
    .end local v3    # "widths":[F
    :cond_0
    return v0
.end method

.method private loadSetting()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 152
    sget-object v4, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_INTERCEPTION_SHOW_NUMBER:Ljava/lang/String;

    .line 150
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mShowUnreadNotificationCounts:Z

    .line 153
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 154
    sget-object v3, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_INTERCEPTION_AUTO_CLEAR:Ljava/lang/String;

    .line 153
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 155
    .local v0, "mAutoClear":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->AUTO_CLEAR_SETTING:Z

    if-eqz v1, :cond_2

    sget-wide v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->ONE_DAY_MILLISECOND:J

    :goto_1
    iput-wide v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    .line 157
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateNotificationCounts()V

    .line 149
    return-void

    .line 153
    .end local v0    # "mAutoClear":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mAutoClear":Z
    goto :goto_0

    .line 156
    :cond_2
    sget-wide v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->ONE_DAY_MILLISECOND:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    goto :goto_1
.end method

.method private unRegisterObserver()V
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 360
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mContentObserver:Landroid/database/ContentObserver;

    .line 358
    return-void
.end method

.method private updateResource()V
    .locals 3

    .prologue
    const v2, 0x7f020040

    .line 319
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-eqz v0, :cond_0

    .line 320
    const v0, 0x7f020045

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setImageResource(I)V

    .line 340
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->postInvalidate()V

    .line 318
    return-void

    .line 322
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mShowUnreadNotificationCounts:Z

    if-eqz v0, :cond_4

    .line 323
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    sget v1, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-le v0, v1, :cond_1

    .line 324
    const v0, 0x7f020043

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setImageResource(I)V

    goto :goto_0

    .line 325
    :cond_1
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 326
    const v0, 0x7f020042

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setImageResource(I)V

    goto :goto_0

    .line 327
    :cond_2
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    if-lez v0, :cond_3

    .line 328
    const v0, 0x7f020044

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setImageResource(I)V

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setImageResource(I)V

    goto :goto_0

    .line 333
    :cond_4
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    if-lez v0, :cond_5

    .line 334
    const v0, 0x7f020041

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setImageResource(I)V

    goto :goto_0

    .line 336
    :cond_5
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getBottom()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 104
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 101
    return-void
.end method

.method public getTotalNotificationCounts()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mToalNotificationCounts:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onAttachedToWindow()V

    .line 143
    const-string/jumbo v0, "statusbar"

    .line 142
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 144
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->addCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 145
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->registerObserver()V

    .line 146
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->loadSetting()V

    .line 140
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onDetachedFromWindow()V

    .line 135
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->removeCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 136
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->unRegisterObserver()V

    .line 133
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mShowUnreadNotificationCounts:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    if-lez v0, :cond_0

    .line 114
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    sget v1, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-gt v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 119
    iget v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    .line 117
    add-int/2addr v1, v2

    .line 120
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 121
    iget v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 117
    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 122
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 123
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 115
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPowerSaveModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mCurrentPowerMode:I

    .line 365
    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification()V

    .line 294
    return-void
.end method

.method public registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    new-instance v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$2;-><init>(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mContentObserver:Landroid/database/ContentObserver;

    .line 350
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_INTERCEPTION_SHOW_NUMBER:Ljava/lang/String;

    .line 351
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 353
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 354
    sget-object v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_INTERCEPTION_AUTO_CLEAR:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 343
    return-void
.end method

.method public setShowFilterPanel(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-eq v0, p1, :cond_0

    .line 313
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    .line 314
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateNotificationCounts()V

    .line 311
    :cond_0
    return-void
.end method

.method public setStackScrollLayout(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "stackScrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 128
    return-void
.end method

.method public updateNotificationCounts()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const v7, 0x7f0f01b7

    .line 249
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    .line 251
    .local v4, "num":I
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyShadeView()Lcom/android/systemui/statusbar/EmptyShadeView;

    move-result-object v2

    .line 252
    .local v2, "emptyShade":Lcom/android/systemui/statusbar/EmptyShadeView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-ne v5, v6, :cond_0

    .line 253
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 254
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 257
    :cond_0
    :goto_0
    iput v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mToalNotificationCounts:I

    .line 258
    iput v8, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    .line 259
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    .line 260
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_7

    .line 261
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-eqz v5, :cond_1

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_1

    move-object v5, v0

    .line 264
    check-cast v5, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->willBeGone()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    :cond_1
    instance-of v5, v0, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-nez v5, :cond_3

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_3

    .line 267
    :cond_2
    iget-boolean v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-eqz v5, :cond_5

    .line 268
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_READ:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 260
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    :cond_4
    add-int/lit8 v5, v4, -0x1

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 270
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v3    # "i":I
    :cond_5
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 272
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_UNREAD:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 273
    iget v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    goto :goto_2

    .line 274
    :cond_6
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_UNREAD:Ljava/lang/String;

    .line 275
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 274
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 276
    iget v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    goto :goto_2

    .line 281
    .end local v0    # "child":Landroid/view/View;
    :cond_7
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification()V

    .line 282
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateResource()V

    .line 248
    return-void
.end method
