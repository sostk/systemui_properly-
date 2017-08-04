.class public Lcom/meizu/flyme/activeview/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static sDefaultNewActiveJarPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 27
    .local v2, "bytesum":I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v6, "oldfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 42
    .end local v6    # "oldfile":Ljava/io/File;
    :goto_0
    return-void

    .line 29
    .restart local v6    # "oldfile":Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 30
    .local v5, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v7, 0x5a4

    .line 31
    new-array v0, v7, [B

    .line 32
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "byteread":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_1

    .line 36
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v6    # "oldfile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteread":I
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "oldfile":Ljava/io/File;
    :cond_1
    add-int/2addr v2, v1

    const/4 v7, 0x0

    .line 34
    :try_start_1
    invoke-virtual {v4, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .local v3, "file":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "i":I
    :goto_0
    array-length v9, v3

    if-lt v4, v9, :cond_0

    .line 81
    .end local v0    # "a":Ljava/io/File;
    .end local v3    # "file":[Ljava/lang/String;
    .end local v4    # "i":I
    :goto_1
    return-void

    .line 57
    .restart local v0    # "a":Ljava/io/File;
    .restart local v3    # "file":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_0
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 60
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v8, "temp":Ljava/io/File;
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_2

    .line 74
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_4

    .line 56
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .end local v8    # "temp":Ljava/io/File;
    :cond_1
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "temp":Ljava/io/File;
    goto :goto_2

    .line 64
    :cond_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    .local v5, "input":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v7, "output":Ljava/io/FileOutputStream;
    const/16 v9, 0x1400

    .line 66
    new-array v1, v9, [B

    .line 68
    .local v1, "b":[B
    :goto_4
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 71
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 72
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 73
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 80
    .end local v0    # "a":Ljava/io/File;
    .end local v1    # "b":[B
    .end local v3    # "file":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "output":Ljava/io/FileOutputStream;
    .end local v8    # "temp":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Ljava/io/File;
    .restart local v1    # "b":[B
    .restart local v3    # "file":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    .restart local v7    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "temp":Ljava/io/File;
    :cond_3
    const/4 v9, 0x0

    .line 69
    :try_start_1
    invoke-virtual {v7, v1, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 75
    .end local v1    # "b":[B
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "output":Ljava/io/FileOutputStream;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/meizu/flyme/activeview/utils/FileUtil;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 104
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    :cond_0
    return v6

    .line 105
    .end local v0    # "dirFile":Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 108
    .restart local v0    # "dirFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const/4 v2, 0x1

    .line 112
    .local v2, "flag":Z
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .line 114
    .end local v2    # "flag":Z
    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-lt v3, v4, :cond_4

    .line 127
    :cond_3
    if-eqz v2, :cond_6

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    return v4

    .line 115
    :cond_4
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_5

    .line 121
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)Z

    move-result v2

    .line 122
    .local v2, "flag":Z
    if-eqz v2, :cond_3

    .line 114
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "flag":Z
    :cond_5
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    .line 117
    .restart local v2    # "flag":Z
    if-eqz v2, :cond_3

    goto :goto_2

    .line 128
    .end local v2    # "flag":Z
    :cond_6
    return v6
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    return v2

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileS"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v4, "#.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v4, 0x400

    .line 167
    cmp-long v4, p0, v4

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "fileSizeString":Ljava/lang/String;
    :goto_1
    return-object v1

    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_0
    move v4, v3

    .line 167
    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x100000

    .line 169
    cmp-long v4, p0, v4

    if-ltz v4, :cond_2

    move v4, v2

    :goto_2
    if-nez v4, :cond_3

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_2
    move v4, v3

    .line 169
    goto :goto_2

    :cond_3
    const-wide/32 v4, 0x40000000

    .line 171
    cmp-long v4, p0, v4

    if-ltz v4, :cond_4

    :goto_3
    if-nez v2, :cond_5

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 171
    goto :goto_3

    .line 174
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getActiveViewCachesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, ""

    .line 190
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 191
    .local v0, "fileDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 195
    return-object v2

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "activecache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultNewActiveJarPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    sget-object v1, Lcom/meizu/flyme/activeview/utils/FileUtil;->sDefaultNewActiveJarPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    :goto_0
    sget-object v1, Lcom/meizu/flyme/activeview/utils/FileUtil;->sDefaultNewActiveJarPath:Ljava/lang/String;

    return-object v1

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getActiveViewCachesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "cachesDir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "NewActiveView.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/meizu/flyme/activeview/utils/FileUtil;->sDefaultNewActiveJarPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDirSize(Ljava/io/File;)J
    .locals 10
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const-wide/16 v8, 0x0

    .line 140
    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v2, 0x0

    .line 147
    .local v2, "dirSize":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 148
    .local v4, "files":[Ljava/io/File;
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-lt v5, v6, :cond_2

    .line 156
    return-wide v2

    .line 141
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "dirSize":J
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    return-wide v8

    .line 144
    :cond_1
    return-wide v8

    .line 148
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v2    # "dirSize":J
    .restart local v4    # "files":[Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_2
    aget-object v1, v0, v5

    .line 149
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_4

    .line 148
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_1

    .line 152
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 153
    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getDirSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_1
.end method
