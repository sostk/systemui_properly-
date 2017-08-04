.class public Lorg/apache/http/entity/StringEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "StringEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/entity/StringEntity;->content:[B

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
