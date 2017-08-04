.class public Lcom/meizu/flyme/activeview/download/DownloadFileChecker;
.super Ljava/lang/Object;
.source "DownloadFileChecker.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/download/IFileChecker;


# static fields
.field private static final MASK_FILE_LENGTH:I = 0x1

.field private static final MASK_HEAD_TAIL_MD5:I = 0x4

.field private static final MASK_PACKAGE_NAME:I = 0x8

.field private static final MASK_VERSION_CODE:I = 0x10

.field private static final MASK_WHOLE_MD5:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableCheck:Z

.field private mMd5:Ljava/lang/String;

.field private mNoContentLength:Z

.field private mTargetLength:J

.field private mTargetPackageName:Ljava/lang/String;

.field private mVerifyMode:I

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "verifyMode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "fileLength"    # J
    .param p6, "fileMd5"    # Ljava/lang/String;
    .param p7, "versionCode"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mEnableCheck:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mNoContentLength:Z

    .line 33
    iput-object p1, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mVerifyMode:I

    .line 35
    iput-object p3, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetPackageName:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    .line 37
    iput-object p6, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    .line 38
    iput p7, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mVersionCode:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Checker limit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->logE(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private isMaskEnable(I)Z
    .locals 2
    .param p1, "mask"    # I

    .prologue
    const/4 v0, 0x0

    .line 69
    iget v1, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mVerifyMode:I

    and-int/2addr v1, p1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logE(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public checkFileDataInfo(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;
    .locals 14
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 98
    iget-boolean v9, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mEnableCheck:Z

    if-nez v9, :cond_1

    .line 136
    :cond_0
    invoke-static {}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->instanceSuccessResult()Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v7

    return-object v7

    .line 99
    :cond_1
    const/4 v6, 0x0

    .line 101
    .local v6, "somethingCheck":Z
    iget-object v9, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 123
    :cond_2
    if-nez v6, :cond_0

    iget-wide v10, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    cmp-long v9, v10, v12

    if-gtz v9, :cond_5

    move v9, v7

    :goto_0
    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mNoContentLength:Z

    if-eqz v9, :cond_0

    invoke-direct {p0, v7}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    iput-boolean v8, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mNoContentLength:Z

    .line 125
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/Utility;->getFileLength(Ljava/lang/String;)J

    move-result-wide v2

    .line 126
    .local v2, "fileLength":J
    cmp-long v9, v2, v12

    if-gtz v9, :cond_6

    move v9, v7

    :goto_1
    if-nez v9, :cond_0

    .line 127
    iget-wide v10, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    cmp-long v9, v2, v10

    if-nez v9, :cond_7

    move v5, v7

    .line 128
    .local v5, "match":Z
    :goto_2
    if-nez v5, :cond_0

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Download File length not match("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->logE(Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->instanceErrorResult(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v7

    return-object v7

    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v2    # "fileLength":J
    .end local v5    # "match":Z
    :cond_3
    const/4 v9, 0x2

    .line 102
    invoke-direct {p0, v9}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x4

    .line 111
    invoke-direct {p0, v9}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 112
    const/4 v6, 0x1

    const/high16 v9, 0x100000

    .line 113
    invoke-static {p1, v9}, Lcom/meizu/flyme/activeview/utils/Md5Helper;->md5sumHeadTail(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "headTailMd5":Ljava/lang/String;
    iget-object v9, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 115
    .restart local v5    # "match":Z
    if-nez v5, :cond_2

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HeadTail md5 not match("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->logE(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->instanceErrorResult(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v7

    return-object v7

    .line 103
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v4    # "headTailMd5":Ljava/lang/String;
    .end local v5    # "match":Z
    :cond_4
    const/4 v6, 0x1

    .line 104
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/Md5Helper;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "fileMd5":Ljava/lang/String;
    iget-object v9, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 106
    .restart local v5    # "match":Z
    if-nez v5, :cond_2

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Whole md5 not match("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->logE(Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->instanceErrorResult(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v7

    return-object v7

    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "fileMd5":Ljava/lang/String;
    .end local v5    # "match":Z
    :cond_5
    move v9, v8

    .line 123
    goto/16 :goto_0

    .restart local v2    # "fileLength":J
    :cond_6
    move v9, v8

    .line 126
    goto/16 :goto_1

    :cond_7
    move v5, v8

    .line 127
    goto/16 :goto_2
.end method

.method public checkHttpContentLength(JJ)Lcom/meizu/flyme/activeview/download/FileCheckResult;
    .locals 11
    .param p1, "httpRange"    # J
    .param p3, "contentLength"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    iget-boolean v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mEnableCheck:Z

    if-nez v2, :cond_1

    .line 93
    :cond_0
    invoke-static {}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->instanceSuccessResult()Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v2

    return-object v2

    .line 82
    :cond_1
    cmp-long v2, p3, v8

    if-lez v2, :cond_2

    move v2, v3

    :goto_0
    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mNoContentLength:Z

    .line 84
    iget-wide v6, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    cmp-long v2, v6, v8

    if-gtz v2, :cond_4

    move v2, v3

    :goto_2
    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mNoContentLength:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    add-long v6, p1, p3

    iget-wide v8, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    move v1, v3

    .line 86
    .local v1, "match":Z
    :goto_3
    if-nez v1, :cond_0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File length not match("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-long v4, p1, p3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->logE(Ljava/lang/String;)V

    .line 89
    invoke-static {v0}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->instanceErrorResult(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v2

    return-object v2

    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "match":Z
    :cond_2
    move v2, v4

    .line 82
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v4

    .line 84
    goto :goto_2

    :cond_5
    move v1, v4

    .line 85
    goto :goto_3
.end method

.method public enableCheck(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mEnableCheck:Z

    .line 148
    return-void
.end method

.method public getCheckFileSize()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    iget-wide v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    :cond_1
    return-wide v4

    .line 63
    :cond_2
    iget-wide v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    return-wide v0
.end method

.method public getCheckMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 49
    return-object v0

    :cond_1
    const/4 v0, 0x2

    .line 46
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckPartialMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 57
    return-object v0

    :cond_1
    const/4 v0, 0x4

    .line 54
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getLogVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mVersionCode:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 155
    return-object v0

    .line 153
    :cond_0
    iget v0, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mVersionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFileDataMatch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->checkFileDataInfo(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v0

    .line 142
    .local v0, "result":Lcom/meizu/flyme/activeview/download/FileCheckResult;
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->isMatch()Z

    move-result v1

    return v1
.end method

.method public isFileLengthMatch(J)Z
    .locals 5
    .param p1, "fileLength"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->checkHttpContentLength(JJ)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v0

    .line 75
    .local v0, "result":Lcom/meizu/flyme/activeview/download/FileCheckResult;
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->isMatch()Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, ""

    .local v0, "verifyStr":Ljava/lang/String;
    const/4 v1, 0x1

    .line 165
    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x4

    .line 168
    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    const/16 v1, 0x8

    .line 171
    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    const/16 v1, 0x10

    .line 174
    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    const/4 v1, 0x2

    .line 177
    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->isMaskEnable(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 180
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 184
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verify_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mTargetLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",md5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",v_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1mmd5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 172
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 175
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 178
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "md5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v0, "null"

    .line 181
    goto/16 :goto_5
.end method
