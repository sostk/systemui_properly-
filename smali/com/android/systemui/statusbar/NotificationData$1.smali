.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 202
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 200
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 16
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "mediaNotification":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 209
    .local v2, "aMedia":Z
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 210
    .local v4, "bMedia":Z
    if-eq v2, v4, :cond_1

    .line 211
    if-eqz v2, :cond_0

    const/4 v12, -0x1

    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    .line 214
    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 215
    .local v9, "na":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 217
    .local v10, "nb":Landroid/service/notification/StatusBarNotification;
    iget-object v12, v9, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v12, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-nez v12, :cond_4

    iget-object v12, v9, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v12, v12, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    iget-object v13, v10, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v13, v13, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-ne v12, v13, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v12

    invoke-interface {v12, v9}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    .line 219
    .local v7, "lhs":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v12

    invoke-interface {v12, v10}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result v11

    .line 220
    .local v11, "rhs":I
    if-eq v7, v11, :cond_3

    .line 221
    if-le v7, v11, :cond_2

    const/4 v12, -0x1

    :goto_1
    return v12

    :cond_2
    const/4 v12, 0x1

    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-wide v12, v12, Landroid/app/Notification;->when:J

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-wide v14, v14, Landroid/app/Notification;->when:J

    sub-long/2addr v12, v14

    long-to-int v12, v12

    return v12

    .line 228
    .end local v7    # "lhs":I
    .end local v11    # "rhs":I
    :cond_4
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->priority:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_5

    .line 229
    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    .line 230
    :goto_2
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->priority:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_6

    .line 231
    invoke-static {v10}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 232
    :goto_3
    if-eq v3, v5, :cond_8

    .line 233
    if-eqz v3, :cond_7

    const/4 v12, -0x1

    :goto_4
    return v12

    .line 228
    :cond_5
    const/4 v3, 0x0

    .local v3, "aSystemMax":Z
    goto :goto_2

    .line 230
    .end local v3    # "aSystemMax":Z
    :cond_6
    const/4 v5, 0x0

    .local v5, "bSystemMax":Z
    goto :goto_3

    .line 233
    .end local v5    # "bSystemMax":Z
    :cond_7
    const/4 v12, 0x1

    goto :goto_4

    .line 237
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v12, v13, v14}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v12, v13, v14}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v12}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v13

    sub-int/2addr v12, v13

    return v12

    .line 243
    :cond_9
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v12

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v13

    sub-int v6, v12, v13

    .line 244
    .local v6, "d":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->-get1(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v12

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->-get1(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v13

    if-eq v12, v13, :cond_b

    .line 245
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->-get1(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, -0x1

    :goto_5
    return v12

    :cond_a
    const/4 v12, 0x1

    goto :goto_5

    .line 246
    :cond_b
    if-eqz v6, :cond_c

    .line 247
    return v6

    .line 249
    :cond_c
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-wide v12, v12, Landroid/app/Notification;->when:J

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-wide v14, v14, Landroid/app/Notification;->when:J

    sub-long/2addr v12, v14

    long-to-int v12, v12

    return v12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
