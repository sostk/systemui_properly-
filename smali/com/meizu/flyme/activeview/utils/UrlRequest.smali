.class public Lcom/meizu/flyme/activeview/utils/UrlRequest;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodePostParameters(Ljava/util/List;Ljava/lang/String;)[B
    .locals 7
    .param p1, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 83
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 85
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Encoding not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static request(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/meizu/flyme/activeview/utils/UrlRequest;->requestBase(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/meizu/flyme/activeview/utils/HttpLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Lcom/meizu/flyme/activeview/utils/HttpLoadException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UrlRequest --> request Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 24
    return-object v1
.end method

.method public static requestBase(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/flyme/activeview/utils/HttpLoadException;
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .local v3, "connectOutputStream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 32
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v11, "User-Agent"

    const-string/jumbo v12, "MEIZU"

    .line 33
    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x7530

    .line 34
    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string/jumbo v11, "POST"

    .line 35
    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 36
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 37
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 38
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 39
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .local v3, "connectOutputStream":Ljava/io/OutputStream;
    const-string/jumbo v11, "UTF-8"

    .line 40
    invoke-static {p1, v11}, Lcom/meizu/flyme/activeview/utils/UrlRequest;->encodePostParameters(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write([B)V

    .line 42
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .local v10, "responseCode":I
    const/16 v11, 0xc8

    .line 43
    if-eq v10, v11, :cond_0

    .line 53
    new-instance v11, Lcom/meizu/flyme/activeview/utils/HttpLoadException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Server response code : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lcom/meizu/flyme/activeview/utils/HttpLoadException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_0
    .catch Lcom/meizu/flyme/activeview/utils/HttpLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "connectOutputStream":Ljava/io/OutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "responseCode":I
    :catch_0
    move-exception v5

    .line 56
    .local v5, "e":Lcom/meizu/flyme/activeview/utils/HttpLoadException;
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v5    # "e":Lcom/meizu/flyme/activeview/utils/HttpLoadException;
    :catchall_0
    move-exception v11

    .line 62
    if-nez v8, :cond_4

    .line 65
    :goto_0
    if-nez v3, :cond_5

    .line 70
    :goto_1
    throw v11

    .line 44
    .restart local v3    # "connectOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "responseCode":I
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 45
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v11, v8, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v2, "buf":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 62
    if-nez v8, :cond_2

    .line 65
    :goto_3
    if-nez v3, :cond_3

    .line 70
    :goto_4
    return-object v11

    .line 49
    :cond_1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Lcom/meizu/flyme/activeview/utils/HttpLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 56
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "connectOutputStream":Ljava/io/OutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "responseCode":I
    :catch_1
    move-exception v7

    .line 58
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UrlRequest --> requestBase Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 59
    new-instance v11, Lcom/meizu/flyme/activeview/utils/HttpLoadException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/meizu/flyme/activeview/utils/HttpLoadException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "connectOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "responseCode":I
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 70
    :catch_2
    move-exception v6

    .line 69
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 66
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 63
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "connectOutputStream":Ljava/io/OutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "responseCode":I
    :cond_4
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 70
    :catch_3
    move-exception v6

    .line 69
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1
.end method
