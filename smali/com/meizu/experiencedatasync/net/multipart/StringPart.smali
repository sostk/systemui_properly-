.class public Lcom/meizu/experiencedatasync/net/multipart/StringPart;
.super Lcom/meizu/experiencedatasync/net/multipart/PartBase;
.source "StringPart.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v0, "text/plain"

    .line 78
    if-nez p3, :cond_0

    const-string/jumbo p3, "US-ASCII"

    .line 79
    .end local p3    # "charset":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "8bit"

    .line 75
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/meizu/experiencedatasync/net/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_1

    .line 82
    const-string/jumbo p2, ""

    .line 87
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    iput-object p2, p0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->value:Ljava/lang/String;

    .line 74
    return-void
.end method
