.class public Lcom/meizu/media/music/support/LrcParser;
.super Ljava/lang/Object;
.source "LrcParser.java"


# static fields
.field private static sCellPattern:Ljava/util/regex/Pattern;

.field private static sInfoPattern:Ljava/util/regex/Pattern;

.field private static sTimestampPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "\\[[0-9]{1,2}(:[0-9]{1,2}){1,2}(\\.[0-9]{1,3})?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/music/support/LrcParser;->sTimestampPattern:Ljava/util/regex/Pattern;

    .line 29
    const-string/jumbo v0, "(\\[[0-9]{1,2}(:[0-9]{1,2}){1,2}(\\.[0-9]{1,3})?\\])+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/music/support/LrcParser;->sCellPattern:Ljava/util/regex/Pattern;

    .line 30
    const-string/jumbo v0, "\\[[ ]*(ar|ti|al|by|offset)[ ]*:.*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/music/support/LrcParser;->sInfoPattern:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharset(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 208
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v1, v8}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 212
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x3

    new-array v4, v8, [B

    .line 213
    .local v4, "first3Bytes":[B
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v1, v4, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 214
    .local v7, "read":I
    if-ne v7, v10, :cond_2

    .line 215
    const-string/jumbo v8, "GBK"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 232
    if-eqz v1, :cond_0

    .line 233
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 235
    :cond_0
    if-eqz v6, :cond_1

    .line 236
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 215
    :cond_1
    :goto_0
    return-object v8

    .line 216
    :cond_2
    const/4 v8, 0x0

    :try_start_4
    aget-byte v8, v4, v8

    if-ne v8, v10, :cond_5

    .line 217
    const/4 v8, 0x1

    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_5

    .line 219
    const-string/jumbo v8, "unicode"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 232
    if-eqz v1, :cond_3

    .line 233
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 235
    :cond_3
    if-eqz v6, :cond_4

    .line 236
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 219
    :cond_4
    :goto_1
    return-object v8

    .line 220
    :cond_5
    const/4 v8, 0x0

    :try_start_6
    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_8

    .line 221
    const/4 v8, 0x1

    aget-byte v8, v4, v8

    if-ne v8, v10, :cond_8

    .line 223
    const-string/jumbo v8, "unicode"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 232
    if-eqz v1, :cond_6

    .line 233
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 235
    :cond_6
    if-eqz v6, :cond_7

    .line 236
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 223
    :cond_7
    :goto_2
    return-object v8

    .line 224
    :cond_8
    const/4 v8, 0x0

    :try_start_8
    aget-byte v8, v4, v8

    const/16 v9, -0x11

    if-ne v8, v9, :cond_b

    .line 225
    const/4 v8, 0x1

    aget-byte v8, v4, v8

    const/16 v9, -0x45

    if-ne v8, v9, :cond_b

    .line 226
    const/4 v8, 0x2

    aget-byte v8, v4, v8

    const/16 v9, -0x41

    if-ne v8, v9, :cond_b

    .line 227
    const-string/jumbo v8, "UTF-8"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 232
    if-eqz v1, :cond_9

    .line 233
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 235
    :cond_9
    if-eqz v6, :cond_a

    .line 236
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 227
    :cond_a
    :goto_3
    return-object v8

    .line 232
    :cond_b
    if-eqz v1, :cond_c

    .line 233
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 235
    :cond_c
    if-eqz v6, :cond_d

    .line 236
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_d
    :goto_4
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 242
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "first3Bytes":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "read":I
    :cond_e
    :goto_5
    invoke-static {p0}, Lcom/meizu/media/music/support/LrcParser;->testGBKFromFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string/jumbo v8, "GBK"

    :goto_6
    return-object v8

    .line 229
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 232
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_7
    if-eqz v0, :cond_f

    .line 233
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 235
    :cond_f
    if-eqz v5, :cond_e

    .line 236
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 238
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_5

    .line 230
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v8

    .line 232
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :goto_8
    if-eqz v0, :cond_10

    .line 233
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 235
    :cond_10
    if-eqz v5, :cond_11

    .line 236
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 230
    :cond_11
    :goto_9
    throw v8

    .line 242
    :cond_12
    const-string/jumbo v8, "UTF-8"

    goto :goto_6

    .line 238
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 230
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v0, "bis":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 229
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v0, "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v0, "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 238
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "first3Bytes":[B
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "read":I
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method public static getCharset([B)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    const-string/jumbo v0, "GBK"

    .line 247
    .local v0, "charset":Ljava/lang/String;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-le v1, v6, :cond_0

    .line 248
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_1

    aget-byte v1, p0, v4

    if-ne v1, v2, :cond_1

    .line 250
    const-string/jumbo v0, "unicode"

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    aget-byte v1, p0, v3

    if-ne v1, v2, :cond_2

    aget-byte v1, p0, v4

    if-ne v1, v5, :cond_2

    .line 253
    const-string/jumbo v0, "unicode"

    goto :goto_0

    .line 254
    :cond_2
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    aget-byte v1, p0, v3

    const/16 v2, -0x11

    if-ne v1, v2, :cond_0

    .line 255
    aget-byte v1, p0, v4

    const/16 v2, -0x45

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v6

    const/16 v2, -0x41

    if-ne v1, v2, :cond_0

    .line 256
    const-string/jumbo v0, "UTF-8"

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/media/music/support/LrcContent;
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 74
    :cond_0
    return-object v12

    .line 76
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    .line 78
    :cond_2
    return-object v12

    .line 80
    :cond_3
    invoke-static {v4}, Lcom/meizu/media/music/support/LrcParser;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "charset":Ljava/lang/String;
    const/4 v6, 0x0

    .line 83
    .local v6, "line":Ljava/lang/String;
    new-instance v7, Lcom/meizu/media/music/support/LrcContent;

    invoke-direct {v7}, Lcom/meizu/media/music/support/LrcContent;-><init>()V

    .line 84
    .local v7, "lrcContent":Lcom/meizu/media/music/support/LrcContent;
    const/4 v0, 0x0

    .line 86
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 91
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 92
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/meizu/media/music/support/LrcParser;->parseLine(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 95
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 96
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    :cond_5
    :goto_2
    return-object v12

    .line 100
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_7

    .line 101
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 106
    :cond_7
    :goto_3
    invoke-virtual {v7}, Lcom/meizu/media/music/support/LrcContent;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 107
    invoke-virtual {v7}, Lcom/meizu/media/music/support/LrcContent;->sort()Lcom/meizu/media/music/support/LrcContent;

    move-result-object v8

    return-object v8

    .line 103
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "line":Ljava/lang/String;
    :catch_2
    move-exception v3

    goto :goto_2

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 100
    :goto_4
    if-eqz v0, :cond_8

    .line 101
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 98
    :cond_8
    :goto_5
    throw v8

    .line 103
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_9
    return-object v12

    .line 98
    .end local v6    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 95
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .local v6, "line":Ljava/lang/String;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static parseContent([B)Lcom/meizu/media/music/support/LrcContent;
    .locals 11
    .param p0, "content"    # [B

    .prologue
    const/4 v10, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 39
    return-object v10

    .line 41
    :cond_0
    new-instance v8, Lcom/meizu/media/music/support/LrcContent;

    invoke-direct {v8}, Lcom/meizu/media/music/support/LrcContent;-><init>()V

    .line 42
    .local v8, "lrcContent":Lcom/meizu/media/music/support/LrcContent;
    const/4 v0, 0x0

    .line 43
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 44
    .local v7, "line":Ljava/lang/String;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    .local v6, "in":Ljava/io/InputStream;
    invoke-static {p0}, Lcom/meizu/media/music/support/LrcParser;->getCharset([B)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 49
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 50
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/meizu/media/music/support/LrcParser;->parseLine(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 53
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    move-object v0, v1

    .line 54
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 65
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_2
    invoke-virtual {v8}, Lcom/meizu/media/music/support/LrcContent;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 66
    invoke-virtual {v8}, Lcom/meizu/media/music/support/LrcContent;->sort()Lcom/meizu/media/music/support/LrcContent;

    move-result-object v9

    return-object v9

    .line 59
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 60
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 62
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    goto :goto_3

    .line 55
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .local v0, "br":Ljava/io/BufferedReader;
    .local v7, "line":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 56
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 62
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 57
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 59
    :goto_5
    if-eqz v0, :cond_5

    .line 60
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 57
    :cond_5
    :goto_6
    throw v9

    .line 62
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 68
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    return-object v10

    .line 57
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 53
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .line 55
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "line":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static parseInfo(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V
    .locals 10
    .param p0, "infoLine"    # Ljava/lang/String;
    .param p1, "lrcContent"    # Lcom/meizu/media/music/support/LrcContent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    sget-object v5, Lcom/meizu/media/music/support/LrcParser;->sInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 136
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 138
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 137
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "infoCell":Ljava/lang/String;
    const/4 v4, 0x0

    .line 140
    .local v4, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 141
    .local v0, "info":Ljava/lang/String;
    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "infoPair":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 143
    return-void

    .line 144
    :cond_2
    aget-object v5, v2, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "tag":Ljava/lang/String;
    aget-object v5, v2, v8

    aget-object v6, v2, v8

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "info":Ljava/lang/String;
    const-string/jumbo v5, "ar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    invoke-virtual {p1, v0}, Lcom/meizu/media/music/support/LrcContent;->setArtist(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    const-string/jumbo v5, "al"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    invoke-virtual {p1, v0}, Lcom/meizu/media/music/support/LrcContent;->setAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_4
    const-string/jumbo v5, "ti"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 151
    invoke-virtual {p1, v0}, Lcom/meizu/media/music/support/LrcContent;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_5
    const-string/jumbo v5, "by"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    invoke-virtual {p1, v0}, Lcom/meizu/media/music/support/LrcContent;->setBy(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_6
    const-string/jumbo v5, "offset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 157
    return-void

    .line 131
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "infoCell":Ljava/lang/String;
    .end local v2    # "infoPair":[Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static parseLine(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V
    .locals 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "lrcContent"    # Lcom/meizu/media/music/support/LrcContent;

    .prologue
    .line 114
    sget-object v3, Lcom/meizu/media/music/support/LrcParser;->sCellPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 116
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 118
    .local v2, "start":I
    const/4 v0, 0x0

    .line 120
    .local v0, "end":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 122
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/meizu/media/music/support/LrcParser;->parseLrc(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V

    .line 123
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/meizu/media/music/support/LrcParser;->parseLrc(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V

    .line 113
    .end local v0    # "end":I
    .end local v2    # "start":I
    :goto_1
    return-void

    .line 127
    :cond_1
    invoke-static {p0, p1}, Lcom/meizu/media/music/support/LrcParser;->parseInfo(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V

    goto :goto_1
.end method

.method private static parseLrc(Ljava/lang/String;Lcom/meizu/media/music/support/LrcContent;)V
    .locals 12
    .param p0, "lrcLine"    # Ljava/lang/String;
    .param p1, "lrcContent"    # Lcom/meizu/media/music/support/LrcContent;

    .prologue
    const/4 v11, 0x0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    sget-object v9, Lcom/meizu/media/music/support/LrcParser;->sTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 169
    .local v5, "matcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    .line 170
    .local v6, "start":I
    const/4 v2, 0x0

    .line 171
    .local v2, "end":I
    const/4 v7, 0x0

    .line 173
    .local v7, "time":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 174
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 175
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 176
    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "timestamp":Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/media/music/support/LrcParser;->timestamp2MilliSec(Ljava/lang/String;)I

    move-result v7

    .line 178
    new-instance v0, Lcom/meizu/media/music/support/LrcCell;

    invoke-direct {v0, v7, v11}, Lcom/meizu/media/music/support/LrcCell;-><init>(ILjava/lang/String;)V

    .line 179
    .local v0, "cell":Lcom/meizu/media/music/support/LrcCell;
    invoke-virtual {p1, v0}, Lcom/meizu/media/music/support/LrcContent;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v0    # "cell":Lcom/meizu/media/music/support/LrcCell;
    .end local v8    # "timestamp":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "lrc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/media/music/support/LrcContent;->size()I

    move-result v1

    .line 184
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 185
    invoke-virtual {p1, v3}, Lcom/meizu/media/music/support/LrcContent;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/media/music/support/LrcCell;

    invoke-virtual {v9}, Lcom/meizu/media/music/support/LrcCell;->getData()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 186
    invoke-virtual {p1, v3}, Lcom/meizu/media/music/support/LrcContent;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/media/music/support/LrcCell;

    invoke-virtual {v9, v4}, Lcom/meizu/media/music/support/LrcCell;->setData(Ljava/lang/String;)V

    .line 184
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 162
    :cond_3
    return-void
.end method

.method public static testGBK([B)Z
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/16 v7, 0xff

    const/4 v3, 0x0

    .line 269
    if-nez p0, :cond_0

    .line 270
    return v3

    .line 273
    :cond_0
    const/4 v2, 0x0

    .line 274
    .local v2, "open":Z
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_7

    aget-byte v1, p0, v4

    .line 275
    .local v1, "i":B
    move v0, v1

    .line 276
    .local v0, "ch":I
    if-gez v0, :cond_1

    .line 277
    add-int/lit16 v0, v0, 0x100

    .line 280
    :cond_1
    if-nez v2, :cond_5

    .line 281
    const/16 v6, 0x80

    if-le v0, v6, :cond_3

    if-ge v0, v7, :cond_3

    .line 283
    const/4 v2, 0x1

    .line 274
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_3
    if-ltz v0, :cond_4

    const/16 v6, 0x7f

    if-lt v0, v6, :cond_2

    .line 288
    :cond_4
    return v3

    .line 291
    :cond_5
    const/16 v6, 0x3f

    if-le v0, v6, :cond_6

    if-ge v0, v7, :cond_6

    .line 292
    const/4 v2, 0x0

    .line 291
    goto :goto_1

    .line 294
    :cond_6
    return v3

    .line 298
    .end local v0    # "ch":I
    .end local v1    # "i":B
    :cond_7
    if-eqz v2, :cond_8

    :goto_2
    return v3

    :cond_8
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static testGBKFromFile(Ljava/io/File;)Z
    .locals 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v12, 0x1

    .line 303
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x200000

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 304
    :cond_0
    return v12

    .line 306
    :cond_1
    const/4 v5, 0x0

    .line 307
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 309
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 312
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 313
    .local v1, "count":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    .line 314
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 319
    .end local v0    # "b":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 322
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_2

    .line 323
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 325
    :cond_2
    if-eqz v3, :cond_3

    .line 326
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 332
    :cond_3
    :goto_2
    return v12

    .line 316
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "b":[B
    .restart local v1    # "count":I
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 317
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 318
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/media/music/support/LrcParser;->testGBK([B)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v7

    .line 322
    if-eqz v6, :cond_5

    .line 323
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 325
    :cond_5
    if-eqz v4, :cond_6

    .line 326
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 318
    :cond_6
    :goto_3
    return v7

    .line 320
    .end local v0    # "b":[B
    .end local v1    # "count":I
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    .line 322
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v5, :cond_7

    .line 323
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 325
    :cond_7
    if-eqz v3, :cond_8

    .line 326
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 320
    :cond_8
    :goto_5
    throw v7

    .line 328
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 320
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 328
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 319
    .end local v2    # "e":Ljava/io/IOException;
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 328
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "count":I
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method private static timestamp2MilliSec(Ljava/lang/String;)I
    .locals 8
    .param p0, "timestamp"    # Ljava/lang/String;

    .prologue
    const v7, 0xea60

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    .line 192
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "times":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v6, :cond_0

    .line 194
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v1, v7

    .line 195
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 194
    add-int/2addr v1, v2

    return v1

    .line 196
    :cond_0
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 197
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x36ee80

    mul-int/2addr v1, v2

    .line 198
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v2, v7

    .line 197
    add-int/2addr v1, v2

    .line 199
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 197
    add-int/2addr v1, v2

    return v1

    .line 201
    :cond_1
    return v3
.end method
