.class public abstract Lcom/meizu/experiencedatasync/net/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA_BYTES:[B

.field protected static final QUOTE_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->BOUNDARY_BYTES:[B

    .line 70
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 76
    const-string/jumbo v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    .line 83
    const-string/jumbo v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->QUOTE_BYTES:[B

    .line 90
    const-string/jumbo v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->EXTRA_BYTES:[B

    .line 97
    const-string/jumbo v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 104
    const-string/jumbo v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 111
    const-string/jumbo v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CHARSET_BYTES:[B

    .line 118
    const-string/jumbo v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 117
    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
