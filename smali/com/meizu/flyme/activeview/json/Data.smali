.class public Lcom/meizu/flyme/activeview/json/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Data;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Data;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Data;->text:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Data;->url:Ljava/lang/String;

    .line 26
    return-void
.end method
