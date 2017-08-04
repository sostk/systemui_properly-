.class public Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentNameKey"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    .line 56
    iput p2, p0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->userId:I

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v0, p1, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    if-nez v0, :cond_0

    .line 67
    return v1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    move-object v0, p1

    check-cast v0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget v0, p0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->userId:I

    check-cast p1, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->userId:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
