.class public Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;
.super Ljava/lang/Object;
.source "UpgradeCheckInfo.java"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private redirect:Ljava/lang/String;

.field private value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->redirect:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->value:Ljava/util/List;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->code:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->message:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setRedirect(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirect"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->redirect:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setValue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->value:Ljava/util/List;

    .line 47
    return-void
.end method
