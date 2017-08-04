.class public Lcom/meizu/flyme/activeview/utils/Md5Helper;
.super Ljava/lang/Object;
.source "Md5Helper.java"


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x10

    .line 13
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Md5Helper;->hexDigits:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 53
    array-length v3, p0

    .line 54
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .line 56
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 60
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 57
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Md5Helper;->hexDigits:[C

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    .line 58
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Md5Helper;->hexDigits:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static md5sum(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .local v3, "numRead":I
    const/16 v5, 0x400

    .line 39
    :try_start_0
    new-array v0, v5, [B

    .local v0, "buffer":[B
    const-string/jumbo v5, "MD5"

    .line 40
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 41
    .local v2, "md5":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/flyme/activeview/utils/Md5Helper;->encodeHex([B)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "str":Ljava/lang/String;
    return-object v4

    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v2, v0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0    # "buffer":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    .line 49
    return-object v5
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 20
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/Md5Helper;->md5sum(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 25
    if-nez v2, :cond_0

    .line 29
    :goto_0
    return-object v3

    .line 27
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 23
    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    if-nez v1, :cond_1

    .line 32
    :goto_2
    return-object v4

    .line 27
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 29
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 25
    :goto_3
    if-nez v1, :cond_2

    .line 29
    :goto_4
    throw v3

    .line 27
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 29
    :catch_3
    move-exception v4

    goto :goto_4

    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static md5sumHeadTail(Ljava/lang/String;I)Ljava/lang/String;
    .locals 20
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "blockSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 66
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v15, "tempFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 69
    .local v4, "fileLength":J
    mul-int/lit8 v17, p1, 0x2

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v4, v18

    if-ltz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    if-nez v17, :cond_1

    .line 70
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "md5sumHeadTail file length is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    const/16 v17, 0x0

    .line 113
    return-object v17

    .line 69
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 74
    :cond_1
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "numRead":I
    const/16 v16, 0x0

    .local v16, "totalRead":I
    const/16 v17, 0x400

    .line 78
    :try_start_1
    move/from16 v0, v17

    new-array v2, v0, [B

    .local v2, "buffer":[B
    const-string/jumbo v17, "MD5"

    .line 79
    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 80
    .local v8, "md5":Ljava/security/MessageDigest;
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 85
    :cond_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 87
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .end local v7    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v12, v4, v18

    .local v12, "skipSize":J
    :goto_2
    const-wide/16 v18, 0x0

    .line 90
    cmp-long v17, v12, v18

    if-gtz v17, :cond_5

    const/16 v17, 0x1

    :goto_3
    if-nez v17, :cond_9

    .line 91
    :try_start_2
    invoke-virtual {v6, v12, v13}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    .local v10, "numSkip":J
    const-wide/16 v18, 0x0

    .line 92
    cmp-long v17, v10, v18

    if-gtz v17, :cond_6

    const/16 v17, 0x1

    :goto_4
    if-nez v17, :cond_7

    .line 93
    sub-long/2addr v12, v10

    goto :goto_2

    .end local v6    # "is":Ljava/io/InputStream;
    .end local v10    # "numSkip":J
    .end local v12    # "skipSize":J
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_3
    const/16 v18, 0x0

    .line 80
    sub-int v17, p1, v16

    :try_start_3
    array-length v0, v2

    move/from16 v19, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    sub-int v17, p1, v16

    :goto_5
    :try_start_4
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v7, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-lez v9, :cond_2

    const/16 v17, 0x0

    .line 81
    move/from16 v0, v17

    invoke-virtual {v8, v2, v0, v9}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    add-int v16, v16, v9

    goto :goto_1

    .line 80
    :cond_4
    :try_start_5
    array-length v0, v2

    move/from16 v17, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    .line 90
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v12    # "skipSize":J
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    .line 92
    .restart local v10    # "numSkip":J
    :cond_6
    const/16 v17, 0x0

    goto :goto_4

    .line 95
    :cond_7
    :try_start_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "skip file return: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 113
    .end local v2    # "buffer":[B
    .end local v4    # "fileLength":J
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "md5":Ljava/security/MessageDigest;
    .end local v9    # "numRead":I
    .end local v10    # "numSkip":J
    .end local v12    # "skipSize":J
    .end local v15    # "tempFile":Ljava/io/File;
    .end local v16    # "totalRead":I
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 109
    if-nez v6, :cond_b

    :goto_7
    const/16 v17, 0x0

    .line 116
    return-object v17

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":[B
    .restart local v4    # "fileLength":J
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "md5":Ljava/security/MessageDigest;
    .restart local v9    # "numRead":I
    .restart local v12    # "skipSize":J
    .restart local v15    # "tempFile":Ljava/io/File;
    .restart local v16    # "totalRead":I
    :cond_8
    const/16 v17, 0x0

    .line 101
    :try_start_8
    move/from16 v0, v17

    invoke-virtual {v8, v2, v0, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 100
    :cond_9
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_8

    .line 104
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/meizu/flyme/activeview/utils/Md5Helper;->encodeHex([B)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v14

    .line 109
    .local v14, "str":Ljava/lang/String;
    if-nez v6, :cond_a

    .line 113
    :goto_8
    return-object v14

    .line 111
    :cond_a
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_8

    .line 113
    :catch_1
    move-exception v17

    goto :goto_8

    .line 111
    .end local v2    # "buffer":[B
    .end local v4    # "fileLength":J
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "md5":Ljava/security/MessageDigest;
    .end local v9    # "numRead":I
    .end local v12    # "skipSize":J
    .end local v14    # "str":Ljava/lang/String;
    .end local v15    # "tempFile":Ljava/io/File;
    .end local v16    # "totalRead":I
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    .line 113
    :catch_2
    move-exception v17

    goto :goto_7

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 109
    :goto_9
    if-nez v6, :cond_c

    .line 113
    :goto_a
    throw v17

    .line 111
    :cond_c
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_a

    .line 113
    :catch_3
    move-exception v18

    goto :goto_a

    .restart local v4    # "fileLength":J
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v9    # "numRead":I
    .restart local v15    # "tempFile":Ljava/io/File;
    .restart local v16    # "totalRead":I
    :catchall_1
    move-exception v17

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_9

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v2    # "buffer":[B
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "md5":Ljava/security/MessageDigest;
    :catchall_2
    move-exception v17

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_9

    .end local v2    # "buffer":[B
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "md5":Ljava/security/MessageDigest;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v2    # "buffer":[B
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "md5":Ljava/security/MessageDigest;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_6
.end method
