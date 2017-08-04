.class public Lcom/meizu/flyme/activeview/version/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/version/CheckListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;,
        Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;,
        Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;
    }
.end annotation


# static fields
.field public static final CUR_VERSION_AVAILABLE:I = 0x3

.field public static final CUR_VERSION_LOWER:I = 0x2

.field public static final CUR_VERSION_LOWER_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VersionManager"

.field private static sVersionManager:Lcom/meizu/flyme/activeview/version/VersionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataVersion:Ljava/lang/String;

.field private mOnVersionChangedListener:Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

.field private final mUiHandler:Landroid/os/Handler;

.field private mUpgradeChecker:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mUiHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/flyme/activeview/version/VersionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/version/VersionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/version/VersionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mOnVersionChangedListener:Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/flyme/activeview/version/VersionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/version/VersionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mDataVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/flyme/activeview/version/VersionManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/version/VersionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static checkUpdate(Landroid/content/Context;)Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "deviceId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "model":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getSN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, "sn":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "androidVersion":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getSystemVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 207
    .local v15, "sysVer":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getUnitType(Landroid/content/Context;)I

    move-result v16

    .line 209
    .local v16, "unitType":I
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .local v11, "serviceObj":Lorg/json/JSONObject;
    const-string/jumbo v21, "version"

    const-string/jumbo v22, "2.0.0"

    .line 210
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v21, "serviceName"

    const-string/jumbo v22, "com.meizu.flyme.activeview"

    .line 211
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 213
    .local v10, "serviceArray":Lorg/json/JSONArray;
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 215
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .local v3, "appJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v21, "deviceType"

    .line 216
    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v21, "firmware"

    .line 217
    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v21, "sysVer"

    .line 218
    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v21, "deviceId"

    .line 219
    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v21, "sn"

    .line 220
    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v21, "services"

    .line 221
    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v13, "signString":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "2635881a7ab0593849fe89e685fc56cd"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/flyme/activeview/utils/Utility;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "sign":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .local v8, "postJson":Lorg/json/JSONObject;
    const-string/jumbo v21, "unitType"

    .line 228
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v12, v1}, Lcom/meizu/flyme/activeview/version/VersionManager;->invokeCheckUpdate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .local v9, "res":Ljava/lang/String;
    const-class v21, Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;

    .line 232
    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/meizu/flyme/activeview/utils/JsonParser;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;

    .line 234
    .local v20, "upgradeCheckResponse":Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;
    invoke-virtual/range {v20 .. v20}, Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;->getReply()Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;

    move-result-object v17

    .line 235
    .local v17, "updateCheckInfo":Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;->getValue()Ljava/util/List;

    move-result-object v19

    .line 237
    .local v19, "updateInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;>;"
    invoke-static/range {v19 .. v19}, Lcom/meizu/flyme/activeview/version/VersionManager;->checkUpgradeInfo(Ljava/util/List;)Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    :try_end_1
    .catch Lcom/meizu/flyme/activeview/utils/HttpLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 238
    .local v18, "updateInfo":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    return-object v18

    .end local v9    # "res":Ljava/lang/String;
    .end local v17    # "updateCheckInfo":Lcom/meizu/flyme/activeview/json/UpgradeCheckInfo;
    .end local v18    # "updateInfo":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    .end local v19    # "updateInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;>;"
    .end local v20    # "upgradeCheckResponse":Lcom/meizu/flyme/activeview/version/UpgradeCheckResponse;
    :catch_0
    move-exception v5

    .local v5, "e":Lcom/meizu/flyme/activeview/utils/HttpLoadException;
    :try_start_2
    const-string/jumbo v21, "VersionManager"

    .line 241
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "get upgrade check info is fail : message="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/utils/HttpLoadException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v21, 0x0

    .line 248
    return-object v21

    .line 247
    .end local v2    # "androidVersion":Ljava/lang/String;
    .end local v3    # "appJsonObject":Lorg/json/JSONObject;
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v5    # "e":Lcom/meizu/flyme/activeview/utils/HttpLoadException;
    .end local v7    # "model":Ljava/lang/String;
    .end local v8    # "postJson":Lorg/json/JSONObject;
    .end local v10    # "serviceArray":Lorg/json/JSONArray;
    .end local v11    # "serviceObj":Lorg/json/JSONObject;
    .end local v12    # "sign":Ljava/lang/String;
    .end local v13    # "signString":Ljava/lang/StringBuffer;
    .end local v14    # "sn":Ljava/lang/String;
    .end local v15    # "sysVer":Ljava/lang/String;
    .end local v16    # "unitType":I
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "VersionManager"

    .line 245
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "check the upgrade info error : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    .line 246
    return-object v21
.end method

.method private static checkUpgradeInfo(Ljava/util/List;)Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;",
            ">;)",
            "Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;"
        }
    .end annotation

    .prologue
    .local p0, "updateInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 252
    if-nez p0, :cond_1

    .line 253
    :cond_0
    return-object v5

    .line 252
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    .line 256
    .local v2, "updateInfo":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 264
    return-object v2

    .line 256
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    .line 257
    .local v1, "info":Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->isExistsUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getLatestVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getLatestVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    .line 259
    move-object v2, v1

    goto :goto_0
.end method

.method public static getJarVersion(Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;)Ljava/lang/String;
    .locals 6
    .param p0, "classLoader"    # Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;

    .prologue
    :try_start_0
    const-string/jumbo v3, "com.meizu.flyme.activeview.version.Version"

    .line 190
    invoke-virtual {p0, v3}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "versionClazz":Ljava/lang/Class;
    const-string/jumbo v3, "VERSION"

    .line 191
    invoke-static {v2, v2, v3}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .local v1, "version":Ljava/lang/String;
    return-object v1

    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "versionClazz":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "VersionManager"

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get the version in jar file error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 196
    return-object v3
.end method

.method public static getVersionManager(Landroid/content/Context;)Lcom/meizu/flyme/activeview/version/VersionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/meizu/flyme/activeview/version/VersionManager;->sVersionManager:Lcom/meizu/flyme/activeview/version/VersionManager;

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/version/VersionManager;->sVersionManager:Lcom/meizu/flyme/activeview/version/VersionManager;

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/activeview/version/VersionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/flyme/activeview/version/VersionManager;->sVersionManager:Lcom/meizu/flyme/activeview/version/VersionManager;

    goto :goto_0
.end method

.method private static invokeCheckUpdate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "sign"    # Ljava/lang/String;
    .param p2, "unitType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/flyme/activeview/utils/HttpLoadException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "apps"

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "sign"

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "unitType"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string/jumbo v2, "VersionManager"

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "----post the check upgrade request : apps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sign = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "http://upush.meizu.com/pluginupgrade/check"

    .line 275
    invoke-static {v2, v1}, Lcom/meizu/flyme/activeview/utils/UrlRequest;->requestBase(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/meizu/flyme/activeview/utils/HttpLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lcom/meizu/flyme/activeview/utils/HttpLoadException;
    throw v0
.end method


# virtual methods
.method public checkUpgradeVersion(Lcom/meizu/flyme/activeview/json/ActiveData;)V
    .locals 2
    .param p1, "activeData"    # Lcom/meizu/flyme/activeview/json/ActiveData;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/ActiveData;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mDataVersion:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mUpgradeChecker:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mUpgradeChecker:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->isChecking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :goto_1
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/version/CheckListener;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mUpgradeChecker:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mUpgradeChecker:Lcom/meizu/flyme/activeview/version/UnblockUiChecker;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/version/UnblockUiChecker;->startCheck()V

    goto :goto_1
.end method

.method public checkVersion(Lcom/meizu/flyme/activeview/json/ActiveData;)I
    .locals 7
    .param p1, "activeData"    # Lcom/meizu/flyme/activeview/json/ActiveData;

    .prologue
    const/4 v6, 0x3

    .line 64
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/ActiveData;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "dataVersion":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/ActiveData;->getMiniCompatibleVersion()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "dataMinVersion":Ljava/lang/String;
    if-nez v1, :cond_1

    :cond_0
    return v6

    :cond_1
    if-eqz v1, :cond_0

    const-string/jumbo v0, "2.0.0"

    .local v0, "curVersion":Ljava/lang/String;
    const-string/jumbo v3, "VersionManager"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkVersion act data version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", act data min version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",  current version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "2.0.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "2.0.0"

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    const-string/jumbo v3, "2.0.0"

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 75
    return v6

    :cond_2
    const/4 v3, 0x1

    .line 71
    return v3

    :cond_3
    const/4 v3, 0x2

    .line 73
    return v3
.end method

.method public onCheckEnd(ILcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "info"    # Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    .prologue
    .line 90
    if-nez p2, :cond_0

    const-string/jumbo v2, "VersionManager"

    const-string/jumbo v3, "upgrade check info is null"

    .line 134
    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/meizu/flyme/activeview/version/VersionManager$2;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/activeview/version/VersionManager$2;-><init>(Lcom/meizu/flyme/activeview/version/VersionManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getActiveViewCachesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "mCacheDir":Ljava/lang/String;
    new-instance v1, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;Ljava/lang/String;)V

    .line 93
    .local v1, "upgradeDownloader":Lcom/meizu/flyme/activeview/download/UpgradeDownloader;
    new-instance v2, Lcom/meizu/flyme/activeview/version/VersionManager$1;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/activeview/version/VersionManager$1;-><init>(Lcom/meizu/flyme/activeview/version/VersionManager;)V

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->startDownload(Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;)V

    goto :goto_0
.end method

.method public setOnVersionChangedListener(Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;)V
    .locals 0
    .param p1, "onVersionChangedListener"    # Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/VersionManager;->mOnVersionChangedListener:Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    .line 148
    return-void
.end method
