.class public Lcom/meizu/flyme/activeview/views/ActiveView;
.super Lcom/meizu/flyme/activeview/views/IActiveView;
.source "ActiveView.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;


# static fields
.field private static sNativeActiveViewImplClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

.field private mConstructorParams:[Ljava/lang/Object;

.field private mNewVersionJarFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->getActiveViewInstance(Landroid/content/Context;[Ljava/lang/Object;)Lcom/meizu/flyme/activeview/views/IActiveView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    .line 40
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultWidth"    # I
    .param p3, "defaultHeight"    # I
    .param p4, "defaultResId"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;III)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    const/16 v0, 0x8

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->getActiveViewInstance(Landroid/content/Context;[Ljava/lang/Object;)Lcom/meizu/flyme/activeview/views/IActiveView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    .line 52
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->getActiveViewInstance(Landroid/content/Context;[Ljava/lang/Object;)Lcom/meizu/flyme/activeview/views/IActiveView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    .line 58
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useAssetsResources"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->getActiveViewInstance(Landroid/content/Context;[Ljava/lang/Object;)Lcom/meizu/flyme/activeview/views/IActiveView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    .line 46
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveView;->init()V

    .line 47
    return-void
.end method

.method private varargs getActiveViewInstance(Landroid/content/Context;[Ljava/lang/Object;)Lcom/meizu/flyme/activeview/views/IActiveView;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveView;->mNewVersionJarFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 71
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/activeview/views/ActiveView;->mConstructorParams:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 73
    .local v3, "activeViewInstance":Lcom/meizu/flyme/activeview/views/IActiveView;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveView;->mNewVersionJarFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, "jarFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 75
    .local v2, "activeViewImplClazz":Ljava/lang/Class;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 94
    .end local v2    # "activeViewImplClazz":Ljava/lang/Class;
    :goto_1
    if-eqz v2, :cond_4

    .line 105
    :goto_2
    if-nez v2, :cond_6

    .line 125
    .end local v3    # "activeViewInstance":Lcom/meizu/flyme/activeview/views/IActiveView;
    :goto_3
    return-object v3

    .line 69
    .end local v11    # "jarFile":Ljava/io/File;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getDefaultNewActiveJarPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/activeview/views/ActiveView;->mNewVersionJarFilePath:Ljava/lang/String;

    goto :goto_0

    .restart local v2    # "activeViewImplClazz":Ljava/lang/Class;
    .restart local v3    # "activeViewInstance":Lcom/meizu/flyme/activeview/views/IActiveView;
    .restart local v11    # "jarFile":Ljava/io/File;
    :cond_1
    const-string/jumbo v16, "jar\u6587\u4ef6\u5b58\u5728"

    .line 76
    invoke-static/range {v16 .. v16}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v5, "2.0.0"

    .line 80
    .local v5, "curVersion":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->createNewActiveLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;

    move-result-object v6

    .line 81
    .local v6, "dexClassLoader":Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    invoke-static {v6}, Lcom/meizu/flyme/activeview/version/VersionManager;->getJarVersion(Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;)Ljava/lang/String;

    move-result-object v12

    .local v12, "jarVersion":Ljava/lang/String;
    const-string/jumbo v16, "VersionManager"

    .line 82
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getActiveViewInstance jar version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", current version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-nez v11, :cond_3

    .line 84
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveView;->mNewVersionJarFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 85
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->deleteNewActiveLoader(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    .end local v5    # "curVersion":Ljava/lang/String;
    .end local v6    # "dexClassLoader":Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    .end local v12    # "jarVersion":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 90
    .local v9, "e":Ljava/lang/Throwable;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "load ActiveViewImpl class error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 83
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v5    # "curVersion":Ljava/lang/String;
    .restart local v6    # "dexClassLoader":Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    .restart local v12    # "jarVersion":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v12, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_2

    const-string/jumbo v16, "com.meizu.flyme.activeview.views.ActiveViewImpl"

    .line 87
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .local v2, "activeViewImplClazz":Ljava/lang/Class;
    goto/16 :goto_1

    .end local v2    # "activeViewImplClazz":Ljava/lang/Class;
    .end local v5    # "curVersion":Ljava/lang/String;
    .end local v6    # "dexClassLoader":Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    .end local v12    # "jarVersion":Ljava/lang/String;
    :cond_4
    const-string/jumbo v16, "jar\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 95
    invoke-static/range {v16 .. v16}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 97
    :try_start_2
    sget-object v16, Lcom/meizu/flyme/activeview/views/ActiveView;->sNativeActiveViewImplClazz:Ljava/lang/Class;

    if-eqz v16, :cond_5

    .line 100
    :goto_4
    sget-object v2, Lcom/meizu/flyme/activeview/views/ActiveView;->sNativeActiveViewImplClazz:Ljava/lang/Class;

    .restart local v2    # "activeViewImplClazz":Ljava/lang/Class;
    goto/16 :goto_2

    .end local v2    # "activeViewImplClazz":Ljava/lang/Class;
    :cond_5
    const-string/jumbo v16, "com.meizu.flyme.activeview.views.ActiveViewImpl"

    .line 98
    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    sput-object v16, Lcom/meizu/flyme/activeview/views/ActiveView;->sNativeActiveViewImplClazz:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 103
    :catch_1
    move-exception v7

    .line 102
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 108
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    :try_start_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    div-int/lit8 v13, v16, 0x2

    .line 109
    .local v13, "objLength":I
    new-array v14, v13, [Ljava/lang/Object;

    .line 110
    .local v14, "objects":[Ljava/lang/Object;
    new-array v15, v13, [Ljava/lang/Class;

    .local v15, "parameterTypes":[Ljava/lang/Class;
    const/4 v10, 0x0

    .line 111
    .local v10, "i":I
    :goto_5
    if-lt v10, v13, :cond_7

    .line 114
    move v10, v13

    :goto_6
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_8

    .line 117
    invoke-virtual {v2, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 119
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/meizu/flyme/activeview/views/IActiveView;

    move-object v3, v0

    .local v3, "activeViewInstance":Lcom/meizu/flyme/activeview/views/IActiveView;
    goto/16 :goto_3

    .line 112
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .local v3, "activeViewInstance":Lcom/meizu/flyme/activeview/views/IActiveView;
    :cond_7
    aget-object v16, p2, v10

    aput-object v16, v14, v10

    .line 111
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 115
    :cond_8
    sub-int v17, v10, v13

    aget-object v16, p2, v10

    check-cast v16, Ljava/lang/Class;

    aput-object v16, v15, v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 122
    .end local v10    # "i":I
    .end local v13    # "objLength":I
    .end local v14    # "objects":[Ljava/lang/Object;
    .end local v15    # "parameterTypes":[Ljava/lang/Class;
    :catch_2
    move-exception v8

    .line 121
    .local v8, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "new ActiveViewImpl instance error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 62
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/activeview/views/IActiveView;->setOnActiveViewUpgradeListener(Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;)V

    .line 65
    return-void

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAllRunningTasks()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->cancelAllRunningTasks()V

    goto :goto_0
.end method

.method public cancelDownload()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->cancelDownload()V

    goto :goto_0
.end method

.method public cancelExtract()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->cancelExtract()V

    goto :goto_0
.end method

.method public cancelLoadImage()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->cancelLoadImage()V

    goto :goto_0
.end method

.method public clearImageCache()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->clearImageCache()V

    goto :goto_0
.end method

.method public downloadImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->downloadImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadImage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;->downloadImage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V

    goto :goto_0
.end method

.method public downloadPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->downloadPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadPackage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;->downloadPackage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V

    goto :goto_0
.end method

.method public downloadVideo(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/activeview/views/IActiveView;->downloadVideo(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public getActiveViewBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 328
    return-object v1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->getActiveViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getColorPrimary()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 197
    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->getColorPrimary()I

    move-result v0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 140
    return-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 270
    return-object v1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 299
    return-object v1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoAnimEnd()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->gotoAnimEnd()V

    goto :goto_0
.end method

.method public gotoAnimStart()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->gotoAnimStart()V

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 1
    .param p1, "zipExtractedPath"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->loadData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadFromWeb(Ljava/lang/String;II)V
    .locals 1
    .param p1, "webUrl"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/activeview/views/IActiveView;->loadFromWeb(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public loadResourceFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "actFile"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->loadResourceFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgradeFinished(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 464
    if-eq p2, v1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x7

    .line 464
    if-ne p1, v1, :cond_0

    .line 465
    iput-object p3, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mNewVersionJarFilePath:Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "actFileUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v1, :cond_3

    .line 470
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getDefaultNewActiveJarPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->deleteNewActiveLoader(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mConstructorParams:[Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/meizu/flyme/activeview/views/ActiveView;->getActiveViewInstance(Landroid/content/Context;[Ljava/lang/Object;)Lcom/meizu/flyme/activeview/views/IActiveView;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    .line 473
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->updateResource(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/flyme/activeview/views/ActiveView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/views/IActiveView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 468
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/views/ActiveView;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public pauseAnimation()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->pauseAnimation()V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->pauseVideo()V

    goto :goto_0
.end method

.method public resumeAnimation()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->resumeAnimation()V

    goto :goto_0
.end method

.method public setAutoGradientDisplay(Z)V
    .locals 1
    .param p1, "autoGradientDisplay"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setAutoGradientDisplay(Z)V

    goto :goto_0
.end method

.method public setAutoRunAnimation(Z)V
    .locals 1
    .param p1, "autoRunAnimation"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setAutoRunAnimation(Z)V

    goto :goto_0
.end method

.method public setDefaultImage(I)V
    .locals 1
    .param p1, "defaultResId"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setDefaultImage(I)V

    goto :goto_0
.end method

.method public setDefaultImage(III)V
    .locals 1
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "defaultResId"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/activeview/views/IActiveView;->setDefaultImage(III)V

    goto :goto_0
.end method

.method public setDefaultImage(IILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/activeview/views/IActiveView;->setDefaultImage(IILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setDefaultImage(IILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/flyme/activeview/views/IActiveView;->setDefaultImage(IILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDefaultImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setDefaultImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setFrameDelay(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 457
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;->setFrameDelay(J)V

    goto :goto_0
.end method

.method public setImageCache(Lcom/meizu/flyme/activeview/utils/ImageCache;)V
    .locals 1
    .param p1, "imageCache"    # Lcom/meizu/flyme/activeview/utils/ImageCache;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setImageCache(Lcom/meizu/flyme/activeview/utils/ImageCache;)V

    goto :goto_0
.end method

.method protected setOnActiveViewUpgradeListener(Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;)V
    .locals 0
    .param p1, "onActiveViewUpgradeListener"    # Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

    .prologue
    .line 453
    return-void
.end method

.method public setOnEventListener(Lcom/meizu/flyme/activeview/listener/OnEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnEventListener;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setOnEventListener(Lcom/meizu/flyme/activeview/listener/OnEventListener;)V

    goto :goto_0
.end method

.method public setOnLoadImageListener(Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setOnLoadImageListener(Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V

    goto :goto_0
.end method

.method public setOnUpdateListener(Lcom/meizu/flyme/activeview/listener/OnUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setOnUpdateListener(Lcom/meizu/flyme/activeview/listener/OnUpdateListener;)V

    goto :goto_0
.end method

.method public setOnVersionListener(Lcom/meizu/flyme/activeview/listener/OnVersionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnVersionListener;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setOnVersionListener(Lcom/meizu/flyme/activeview/listener/OnVersionListener;)V

    goto :goto_0
.end method

.method public setParallaxListener(Lcom/meizu/flyme/activeview/listener/OnParallaxListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnParallaxListener;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setParallaxListener(Lcom/meizu/flyme/activeview/listener/OnParallaxListener;)V

    goto :goto_0
.end method

.method public setParallaxListener(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "useParallax"    # Ljava/lang/Boolean;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setParallaxListener(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setPassword(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;->setTextContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUseAssetsResources(Z)V
    .locals 1
    .param p1, "useAssetsResources"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setUseAssetsResources(Z)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->startAnimation()V

    goto :goto_0
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->startVideo()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->stopAnimation()V

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->stopVideo()V

    goto :goto_0
.end method

.method public updateResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveView;->mActiveViewImpl:Lcom/meizu/flyme/activeview/views/IActiveView;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->updateResource(Ljava/lang/String;)V

    goto :goto_0
.end method
