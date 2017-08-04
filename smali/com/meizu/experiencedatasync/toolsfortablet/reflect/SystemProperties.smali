.class public Lcom/meizu/experiencedatasync/toolsfortablet/reflect/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/Object;

    .line 36
    .local v2, "params":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p0, v2, v5

    .line 38
    const-string/jumbo v5, "android.os.SystemProperties"

    const-string/jumbo v6, "get"

    invoke-static {v5, v6, v2}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 39
    .local v3, "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 48
    .end local v2    # "params":[Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    .local v4, "ret":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 44
    .end local v4    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    .restart local v4    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "ret":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 43
    .local v1, "iAE":Ljava/lang/IllegalArgumentException;
    throw v1
.end method
