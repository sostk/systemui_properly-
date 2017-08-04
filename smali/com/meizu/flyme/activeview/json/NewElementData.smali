.class public Lcom/meizu/flyme/activeview/json/NewElementData;
.super Ljava/lang/Object;
.source "NewElementData.java"


# instance fields
.field private data:Lcom/meizu/flyme/activeview/json/Data;

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

.field private id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/meizu/flyme/activeview/json/Data;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->data:Lcom/meizu/flyme/activeview/json/Data;

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
    .line 41
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->events:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/meizu/flyme/activeview/json/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/meizu/flyme/activeview/json/Data;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->data:Lcom/meizu/flyme/activeview/json/Data;

    .line 38
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
    .line 45
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Event;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->events:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/NewElementData;->type:Ljava/lang/String;

    .line 26
    return-void
.end method
