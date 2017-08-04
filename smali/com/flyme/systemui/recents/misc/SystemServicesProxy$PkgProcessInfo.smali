.class Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PkgProcessInfo"
.end annotation


# instance fields
.field isMain:Z

.field mem:J

.field pid:J

.field pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PkgProcessInfo{pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1490
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pkgName:Ljava/lang/String;

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1490
    const/16 v1, 0x27

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1491
    const-string/jumbo v1, ", isMain="

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1491
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->isMain:Z

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1492
    const-string/jumbo v1, ", pid="

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1492
    iget-wide v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pid:J

    .line 1489
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1493
    const-string/jumbo v1, ", mem="

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1493
    iget-wide v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->mem:J

    .line 1489
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1494
    const/16 v1, 0x7d

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
