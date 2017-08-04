.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$Entry;,
        Lcom/android/systemui/statusbar/NotificationData$Environment;,
        Lcom/android/systemui/statusbar/NotificationData$1;
    }
.end annotation


# instance fields
.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

.field private final mFakeEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupsWithSummaries:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortedAndFilteredFakeEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V
    .locals 1
    .param p1, "environment"    # Lcom/android/systemui/statusbar/NotificationData$Environment;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFakeEntries:Landroid/util/ArrayMap;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFilteredFakeEntries:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    .line 199
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 254
    return-void
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "e"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->-get0(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    iget-object v0, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 417
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v2

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "      tickerText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "sbnPackage":Ljava/lang/String;
    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    const-string/jumbo v1, "com.flyme.systemuitools"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 429
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 386
    const-string/jumbo v0, "android"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 307
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 275
    return-void
.end method

.method public addFake(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFakeEntries:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 392
    .local v1, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "active notifications: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    const/4 v2, 0x0

    .local v2, "active":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 396
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 397
    .local v3, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v3    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 401
    .local v0, "M":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "inactive notifications: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const/4 v6, 0x0

    .line 404
    .local v6, "inactiveCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 405
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 406
    .local v4, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 407
    invoke-direct {p0, p1, p2, v6, v4}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 408
    add-int/lit8 v6, v6, 0x1

    .line 404
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 390
    .end local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    return-void
.end method

.method public filterAndSort()V
    .locals 8

    .prologue
    .line 317
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 320
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 321
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 322
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 323
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 325
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 321
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 330
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSortFakeEntries()V

    .line 339
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 340
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 341
    .local v0, "M":I
    add-int/lit8 v4, v0, -0x1

    :goto_2
    if-ltz v4, :cond_4

    .line 342
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 343
    .local v2, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 344
    .restart local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupChild()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 345
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 344
    if-eqz v6, :cond_3

    .line 346
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 351
    .end local v0    # "M":I
    .end local v2    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    return-void
.end method

.method public filterAndSortFakeEntries()V
    .locals 5

    .prologue
    .line 498
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFilteredFakeEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 500
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mFakeEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 501
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 502
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mFakeEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 503
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 505
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFilteredFakeEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 496
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    return-void
.end method

.method public findFakeByPkg(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mFakeEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 487
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 488
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mFakeEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 489
    .local v1, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    return-object v1

    .line 487
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFakeEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFilteredFakeEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    return v0

    .line 304
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public hasActiveClearablNotifications(Z)Z
    .locals 3
    .param p1, "filter"    # Z

    .prologue
    .line 515
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 516
    .local v0, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v2, v2, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-ne p1, v2, :cond_0

    .line 518
    const/4 v2, 0x1

    return v2

    .line 522
    .end local v0    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasActiveClearableNotifications()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearablNotifications(Z)Z

    move-result v0

    return v0
.end method

.method public hasActiveNotifications(Z)Z
    .locals 3
    .param p1, "filter"    # Z

    .prologue
    .line 526
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 527
    .local v0, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v2, v2, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-ne p1, v2, :cond_0

    .line 529
    const/4 v2, 0x1

    return v2

    .line 533
    .end local v0    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    return v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupWithSummary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 282
    .local v0, "removed":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    return-object v2

    .line 283
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 284
    return-object v0
.end method

.method public removeFake(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findFakeByPkg(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 472
    .local v1, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v1, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mFakeEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 475
    :cond_0
    return-object v1
.end method

.method shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x1

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 359
    :goto_0
    if-nez v0, :cond_1

    .line 361
    return v1

    :cond_0
    move v0, v1

    .line 359
    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    return v1

    .line 368
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->visibility:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/NotificationData$Environment;->shouldHideSensitiveContents(I)Z

    move-result v0

    .line 368
    if-eqz v0, :cond_3

    .line 370
    return v1

    .line 372
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 287
    return-void
.end method
