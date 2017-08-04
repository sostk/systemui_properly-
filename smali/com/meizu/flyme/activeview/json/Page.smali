.class public Lcom/meizu/flyme/activeview/json/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private autoPlay:Z

.field private duration:I

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Element;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Event;",
            ">;"
        }
    .end annotation
.end field

.field private playMode:Ljava/lang/String;

.field private style:Lcom/meizu/flyme/activeview/json/Style;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Page;->duration:I

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Page;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Page;->events:Ljava/util/List;

    return-object v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Page;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Lcom/meizu/flyme/activeview/json/Style;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Page;->style:Lcom/meizu/flyme/activeview/json/Style;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/json/Page;->autoPlay:Z

    return v0
.end method

.method public setAutoPlay(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/json/Page;->autoPlay:Z

    .line 47
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Page;->duration:I

    .line 55
    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Element;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Page;->elements:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Event;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Page;->events:Ljava/util/List;

    .line 23
    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "playMode"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Page;->playMode:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setStyle(Lcom/meizu/flyme/activeview/json/Style;)V
    .locals 0
    .param p1, "style"    # Lcom/meizu/flyme/activeview/json/Style;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Page;->style:Lcom/meizu/flyme/activeview/json/Style;

    .line 39
    return-void
.end method
