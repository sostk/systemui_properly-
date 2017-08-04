.class public Lcom/meizu/flyme/activeview/utils/HttpLoadException;
.super Ljava/lang/Exception;
.source "HttpLoadException.java"


# instance fields
.field private mHasResponseCode:Z

.field private mResponseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->mHasResponseCode:Z

    .line 12
    iput p1, p0, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->mResponseCode:I

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->mHasResponseCode:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->mHasResponseCode:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->mResponseCode:I

    return v0
.end method

.method public hasHttpResponseCode()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->mHasResponseCode:Z

    return v0
.end method
