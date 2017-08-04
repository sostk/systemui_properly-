.class public Lcom/flyme/systemui/statusbar/utils/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 21
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    return-object v0

    .line 23
    :cond_0
    return-object v1
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 26
    if-ltz p1, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 36
    :try_start_0
    const-string/jumbo v2, "android"

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 37
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 38
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static hasLauncherActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string/jumbo v3, "launcherapps"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 61
    .local v1, "mLauncherApps":Landroid/content/pm/LauncherApps;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    const-string/jumbo v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2240

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 49
    const/4 v1, 0x0

    return v1
.end method

.method public static isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 53
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v1, :cond_0

    .line 54
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 56
    :cond_0
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v0, v1, v0

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method
