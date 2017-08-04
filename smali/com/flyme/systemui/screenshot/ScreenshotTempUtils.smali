.class public Lcom/flyme/systemui/screenshot/ScreenshotTempUtils;
.super Ljava/lang/Object;
.source "ScreenshotTempUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;,
        Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyPic(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "originPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v15, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    const-string/jumbo v19, ".ScreenshotTemp"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v15, "tempDir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 51
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 52
    .local v10, "files":[Ljava/io/File;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v9, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;>;"
    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 54
    const/16 v18, 0x0

    array-length v0, v10

    move/from16 v19, v0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v7, v10, v18

    .line 55
    .local v7, "f":Ljava/io/File;
    new-instance v13, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    invoke-direct {v13}, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;-><init>()V

    .line 56
    .local v13, "info":Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;
    iput-object v7, v13, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;->file:Ljava/io/File;

    .line 57
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;->lastModified:J

    .line 58
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 60
    .end local v7    # "f":Ljava/io/File;
    .end local v13    # "info":Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;
    :cond_0
    new-instance v18, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileComparator;

    invoke-direct/range {v18 .. v18}, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileComparator;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    array-length v0, v10

    move/from16 v18, v0

    add-int/lit8 v5, v18, -0x2

    .line 62
    .local v5, "deleteNum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_1

    .line 63
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;->file:Ljava/io/File;

    .line 64
    .local v8, "file":Ljava/io/File;
    const-string/jumbo v18, "SS.ShareUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "delete "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 69
    .end local v5    # "deleteNum":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;>;"
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i":I
    :catch_0
    move-exception v6

    .line 70
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_2

    .line 75
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 77
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_3

    .line 78
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_3
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v17, "tempFlie":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 82
    new-instance v17, Ljava/io/File;

    .end local v17    # "tempFlie":Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .restart local v17    # "tempFlie":Ljava/io/File;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 85
    .local v16, "tempFilePath":Ljava/lang/String;
    const-string/jumbo v18, "SS.ShareUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Copy pic in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 89
    .local v12, "in":Ljava/io/InputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 91
    .local v14, "out":Ljava/io/FileOutputStream;
    const/16 v18, 0x400

    :try_start_1
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 92
    .local v4, "b":[B
    :goto_2
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 93
    invoke-virtual {v14, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 96
    .end local v4    # "b":[B
    :catchall_0
    move-exception v18

    .line 98
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 103
    :goto_3
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 96
    :goto_4
    throw v18

    .line 95
    .restart local v4    # "b":[B
    :cond_5
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 103
    :goto_5
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 108
    :goto_6
    const-string/jumbo v18, "SS.ShareUtils"

    const-string/jumbo v19, "Copy pic sucess"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v16

    .line 99
    :catch_1
    move-exception v6

    .line 100
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 104
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 105
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 99
    .end local v4    # "b":[B
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 100
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 104
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 105
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static deleteOriginPic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originPath"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    const-string/jumbo v3, "SS.ShareUtils"

    const-string/jumbo v4, "Delete origin pic"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "status":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 32
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string/jumbo v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 34
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 32
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 25
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string/jumbo v3, "SS.ShareUtils"

    const-string/jumbo v4, "Origin pic == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
