.class public Lcom/meizu/flyme/activeview/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x10

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/flyme/activeview/utils/MD5Util;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0, v0}, Lcom/meizu/flyme/activeview/utils/MD5Util;->MD5Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MD5Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 95
    .local v2, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "resultString":Ljava/lang/String;
    .local v3, "resultString":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v4, "MD5"

    .line 96
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 97
    .local v1, "md":Ljava/security/MessageDigest;
    if-eqz p1, :cond_0

    .line 101
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/flyme/activeview/utils/MD5Util;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 109
    .end local v3    # "resultString":Ljava/lang/String;
    .local v2, "resultString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 98
    .end local v2    # "resultString":Ljava/lang/String;
    .restart local v3    # "resultString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/flyme/activeview/utils/MD5Util;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .end local v3    # "resultString":Ljava/lang/String;
    .restart local v2    # "resultString":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v1    # "md":Ljava/security/MessageDigest;
    .local v2, "resultString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .end local v2    # "resultString":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "resultString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "resultString":Ljava/lang/String;
    .local v2, "resultString":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "resultString":Ljava/lang/String;
    .restart local v1    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "resultString":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "resultString":Ljava/lang/String;
    .restart local v2    # "resultString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static MD5Encode([B)[B
    .locals 3
    .param p0, "origin"    # [B

    .prologue
    :try_start_0
    const-string/jumbo v2, "MD5"

    .line 114
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 115
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 22
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "resultSb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 23
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 24
    :cond_0
    aget-byte v2, p0, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/MD5Util;->byteToHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static byteArrayToHexString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B
    .param p1, "beginPos"    # I
    .param p2, "length"    # I

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v1, "resultSb":Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p2, p1

    if-lt v0, v2, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 32
    :cond_0
    aget-byte v2, p0, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/MD5Util;->byteToHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static byteArrayToHexStringLittleEnding([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "resultSb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 39
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 40
    :cond_0
    aget-byte v2, p0, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/MD5Util;->byteToHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static byteToHexString(BZ)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B
    .param p1, "bigEnding"    # Z

    .prologue
    .line 46
    move v2, p0

    .line 47
    .local v2, "n":I
    if-ltz v2, :cond_0

    .line 49
    :goto_0
    div-int/lit8 v0, v2, 0x10

    .line 50
    .local v0, "d1":I
    rem-int/lit8 v1, v2, 0x10

    .line 51
    .local v1, "d2":I
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/meizu/flyme/activeview/utils/MD5Util;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/flyme/activeview/utils/MD5Util;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 48
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_0
    add-int/lit16 v2, v2, 0x100

    goto :goto_0

    .line 51
    .restart local v0    # "d1":I
    .restart local v1    # "d2":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/meizu/flyme/activeview/utils/MD5Util;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/flyme/activeview/utils/MD5Util;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v5, v6, [B

    .local v5, "result":[B
    const/4 v3, 0x0

    .line 75
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 81
    return-object v5

    .line 72
    .end local v3    # "i":I
    .end local v5    # "result":[B
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Error Hex String length"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    .restart local v3    # "i":I
    .restart local v5    # "result":[B
    :cond_1
    div-int/lit8 v0, v3, 0x2

    .line 77
    .local v0, "bytepos":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v1, v6

    .line 78
    .local v1, "c":C
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v2, v6

    .line 79
    .local v2, "c2":C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    goto :goto_0
.end method
