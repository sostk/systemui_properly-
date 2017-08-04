.class public Lorg/apache/http/client/methods/HttpPost;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPost.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
