.class public Lcom/meizu/flyme/activeview/json/ActiveData;
.super Ljava/lang/Object;
.source "ActiveData.java"


# instance fields
.field private content:Lcom/meizu/flyme/activeview/json/Content;

.field private miniCompatibleVersion:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/meizu/flyme/activeview/json/Content;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/ActiveData;->content:Lcom/meizu/flyme/activeview/json/Content;

    return-object v0
.end method

.method public getMiniCompatibleVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/ActiveData;->miniCompatibleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/ActiveData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/meizu/flyme/activeview/json/Content;)V
    .locals 0
    .param p1, "content"    # Lcom/meizu/flyme/activeview/json/Content;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/ActiveData;->content:Lcom/meizu/flyme/activeview/json/Content;

    .line 34
    return-void
.end method

.method public setMiniCompatibleVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "miniCompatibleVersion"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/ActiveData;->miniCompatibleVersion:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/ActiveData;->version:Ljava/lang/String;

    .line 18
    return-void
.end method
