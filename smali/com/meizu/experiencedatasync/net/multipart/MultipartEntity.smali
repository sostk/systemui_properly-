.class public Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field private static MULTIPART_CHARS:[B


# instance fields
.field private contentConsumed:Z

.field private params:Lorg/apache/http/params/HttpParams;

.field protected parts:[Lcom/meizu/experiencedatasync/net/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 99
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    .line 82
    return-void
.end method

.method public constructor <init>([Lcom/meizu/experiencedatasync/net/multipart/Part;)V
    .locals 2
    .param p1, "parts"    # [Lcom/meizu/experiencedatasync/net/multipart/Part;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;->contentConsumed:Z

    .line 140
    const-string/jumbo v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;->parts:[Lcom/meizu/experiencedatasync/net/multipart/Part;

    .line 145
    iput-object v1, p0, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 139
    return-void
.end method
