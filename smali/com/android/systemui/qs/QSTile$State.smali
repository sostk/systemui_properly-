.class public Lcom/android/systemui/qs/QSTile$State;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public autoMirrorDrawable:Z

.field public contentDescription:Ljava/lang/String;

.field public dualLabelContentDescription:Ljava/lang/String;

.field public icon:Lcom/android/systemui/qs/QSTile$Icon;

.field public intermediate:Z

.field public label:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 464
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 464
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 476
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 477
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 478
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-ne v1, v2, :cond_2

    .line 479
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    .line 485
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    .line 483
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 488
    .local v0, "changed":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 489
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 490
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    .line 492
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    .line 493
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 495
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    .line 497
    return v0

    .line 478
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 486
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 506
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 508
    const-string/jumbo v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string/jumbo v1, ",contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string/jumbo v1, ",dualLabelContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string/jumbo v1, ",autoMirrorDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 514
    const-string/jumbo v1, ",intermediate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 516
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method
