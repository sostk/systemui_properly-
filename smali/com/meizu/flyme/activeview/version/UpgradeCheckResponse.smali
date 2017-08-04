.class public Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;
.super Ljava/lang/Object;
.source "UpgradeCheckResponse.java"


# instance fields
.field private reply:Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReply()Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;->reply:Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;

    return-object v0
.end method

.method public setReply(Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;)V
    .locals 0
    .param p1, "reply"    # Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;->reply:Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;

    .line 17
    return-void
.end method
