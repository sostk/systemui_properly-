.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentDisplayId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->mCurrentDisplayId:I

    .line 342
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 348
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-set3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->mCurrentDisplayId:I

    .line 354
    :cond_0
    const-string/jumbo v1, "PhoneStatusBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onDisplayAdded mVirtualDisplay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCurrentDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->mCurrentDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 349
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 367
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 359
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->mCurrentDisplayId:I

    if-ne v0, p1, :cond_0

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->mCurrentDisplayId:I

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-set3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z

    .line 363
    :cond_0
    const-string/jumbo v0, "PhoneStatusBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onDisplayRemoved mVirtualDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentDisplayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->mCurrentDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method
