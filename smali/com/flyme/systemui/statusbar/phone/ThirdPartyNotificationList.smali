.class public Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;
.super Ljava/lang/Object;
.source "ThirdPartyNotificationList.java"


# instance fields
.field private mNotificationListSize:I

.field protected final mNotificationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationOngoingSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    .line 14
    iput v1, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationListSize:I

    .line 15
    iput v1, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationOngoingSize:I

    .line 17
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    iput v4, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationListSize:I

    .line 48
    iput v4, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationOngoingSize:I

    .line 49
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "o$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "o":Ljava/lang/Object;
    move-object v0, v2

    .line 50
    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 52
    .local v1, "isOngoing":Z
    if-eqz v1, :cond_0

    .line 53
    iget v4, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationOngoingSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationOngoingSize:I

    goto :goto_0

    .line 55
    :cond_0
    iget v4, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationListSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationListSize:I

    goto :goto_0

    .line 46
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "isOngoing":Z
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isOngoing"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->update()V

    .line 27
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationListSize:I

    .line 23
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationOngoingSize:I

    .line 24
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 21
    return-void
.end method

.method public hasNotificationItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationListSize:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasOngoingItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationOngoingSize:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isOngoing"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->update()V

    .line 32
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isOngoing"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/ThirdPartyNotificationList;->update()V

    .line 39
    :cond_0
    return-void
.end method
