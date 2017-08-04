.class public Lcom/meizu/experiencedatasync/net/multipart/DataPart;
.super Lcom/meizu/experiencedatasync/net/multipart/PartBase;
.source "DataPart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private filename:Ljava/lang/String;

.field private source:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 29
    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->FILE_NAME_BYTES:[B

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 50
    if-nez p4, :cond_0

    const-string/jumbo p4, "application/octet-stream"

    .line 51
    .end local p4    # "contentType":Ljava/lang/String;
    :cond_0
    if-nez p5, :cond_1

    const-string/jumbo p5, "ISO-8859-1"

    .line 52
    .end local p5    # "charset":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "binary"

    .line 48
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/meizu/experiencedatasync/net/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p3, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iput-object p2, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->filename:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->source:[B

    .line 46
    return-void
.end method
