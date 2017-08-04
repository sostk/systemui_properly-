.class public Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;
.super Ljava/lang/Object;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartTouchShowStateHelper"
.end annotation


# instance fields
.field public isForceHide:Z

.field public isKeyguard:Z

.field public isLand:Z

.field public isLid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 656
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLid:Z

    .line 657
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    .line 658
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    .line 654
    return-void
.end method


# virtual methods
.method public isShowState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 661
    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLid:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmartTouchShowStateHelper{isLand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 667
    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    const-string/jumbo v1, ", isLid="

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLid:Z

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 669
    const-string/jumbo v1, ", isKeyguard="

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 669
    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 670
    const-string/jumbo v1, ", isForceHide="

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 670
    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    const/16 v1, 0x7d

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
