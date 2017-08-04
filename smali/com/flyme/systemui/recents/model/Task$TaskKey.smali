.class public Lcom/flyme/systemui/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;

.field public firstActiveTime:J

.field public final id:I

.field public lastActiveTime:J

.field final mComponentNameKey:Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

.field public final userId:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;IJJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "firstActiveTime"    # J
    .param p6, "lastActiveTime"    # J

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;-><init>(Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    .line 88
    iput p1, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    .line 89
    iput-object p2, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 90
    iput p3, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    .line 91
    iput-wide p4, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->firstActiveTime:J

    .line 92
    iput-wide p6, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 86
    return-void
.end method


# virtual methods
.method public getComponentNameKey()Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Task.Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "u: "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget v1, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, ", "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "lat: "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-wide v2, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 116
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ", "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
