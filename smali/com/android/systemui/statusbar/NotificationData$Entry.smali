.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public expanded:Landroid/view/View;

.field public expandedBig:Landroid/view/View;

.field public expandedPublic:Landroid/view/View;

.field private icon:Lcom/android/internal/statusbar/StatusBarIcon;

.field public icons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation
.end field

.field private interruption:Z

.field public isFake:Z

.field public key:Ljava/lang/String;

.field public legacy:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public targetSdk:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ic"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    .line 63
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getBigContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    return-object v0
.end method

.method public getIconView(I)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0

    .line 104
    :cond_0
    return-object v1
.end method

.method public getPublicContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 178
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 179
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    .line 180
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 174
    :cond_0
    return-void
.end method

.method public setBigContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "bigContentView"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 70
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColorFilter(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 159
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 160
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-eqz v1, :cond_0

    .line 161
    if-nez p1, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->clearColorFilter()V

    .line 157
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(I)V

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    .end local v1    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "key":I
    :cond_2
    return-void
.end method

.method public setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 5
    .param p1, "ic"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v4, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 128
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 131
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 132
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    return v4

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    .end local v1    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "key":I
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public setIconView(ILcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    return-void
.end method

.method public setInterruption()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 79
    return-void
.end method

.method public setNotification(Landroid/app/Notification;)V
    .locals 4
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 118
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 119
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    .end local v1    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "key":I
    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 92
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 93
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-eqz v1, :cond_0

    .line 94
    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/16 v3, 0x8

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    .end local v1    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "key":I
    :cond_2
    return-void
.end method
