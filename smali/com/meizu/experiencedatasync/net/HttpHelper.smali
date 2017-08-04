.class public Lcom/meizu/experiencedatasync/net/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeHttpPost(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "scheme"    # Lorg/apache/http/conn/scheme/Scheme;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .param p4, "httpEntity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/conn/scheme/Scheme;",
            "Lorg/apache/http/params/HttpParams;",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 78
    return-object v10

    .line 80
    :cond_0
    const/4 v6, 0x0

    .line 81
    .local v6, "res":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 82
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string/jumbo v8, "Accept-Charset"

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_1

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v3, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz p3, :cond_2

    .line 89
    invoke-virtual {v5, p3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 91
    :cond_2
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 93
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 94
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 95
    const/4 v7, 0x0

    .line 97
    .local v7, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v5, p4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 98
    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 99
    .local v7, "response":Lorg/apache/http/HttpResponse;
    if-nez v7, :cond_3

    .line 100
    return-object v10

    .line 102
    :cond_3
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v9, v8, :cond_5

    .line 103
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .end local v6    # "res":Ljava/lang/String;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_1
    return-object v6

    .line 105
    .restart local v6    # "res":Ljava/lang/String;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    const-string/jumbo v8, "HttpHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "executeHttpPost, rescode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 107
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 109
    const-string/jumbo v8, "HttpHelper"

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 114
    const-string/jumbo v8, "HttpHelper"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v13, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    .local v10, "trustStore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    .line 49
    .local v8, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 50
    .local v10, "trustStore":Ljava/security/KeyStore;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 51
    new-instance v9, Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory;

    invoke-direct {v9, v10}, Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .local v9, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    move-object v8, v9

    .line 66
    .end local v9    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v10    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    sget-object v11, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v8, v11}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 67
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v11, "https"

    const/16 v12, 0x1bb

    invoke-direct {v7, v11, v8, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 68
    .local v7, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 69
    .local v6, "params":Lorg/apache/http/params/HttpParams;
    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 70
    const-string/jumbo v11, "UTF-8"

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, v13, v7, v6, p1}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpPost(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 62
    .end local v6    # "params":Lorg/apache/http/params/HttpParams;
    .end local v7    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v8    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v3}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v1    # "e":Ljava/security/KeyManagementException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 57
    .local v4, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v2

    .line 55
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v5

    .line 53
    .local v5, "e1":Ljava/security/KeyStoreException;
    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0
.end method
