.class public Lcom/meizu/flyme/activeview/download/FileCheckResult;
.super Ljava/lang/Object;
.source "FileCheckResult.java"


# instance fields
.field private final mErrorMsg:Ljava/lang/String;

.field private final mIsMatch:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isMatch"    # Z
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/download/FileCheckResult;->mIsMatch:Z

    .line 12
    iput-object p2, p0, Lcom/meizu/flyme/activeview/download/FileCheckResult;->mErrorMsg:Ljava/lang/String;

    .line 13
    return-void
.end method

.method protected static instanceErrorResult(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/meizu/flyme/activeview/download/FileCheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/meizu/flyme/activeview/download/FileCheckResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method protected static instanceSuccessResult()Lcom/meizu/flyme/activeview/download/FileCheckResult;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/meizu/flyme/activeview/download/FileCheckResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/meizu/flyme/activeview/download/FileCheckResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/FileCheckResult;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isMatch()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/download/FileCheckResult;->mIsMatch:Z

    return v0
.end method
